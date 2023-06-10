package tad.bean;

import java.util.ArrayList;

import tad.bean.AddressDatasBean.DistrictBean;
import tad.bean.AddressDatasBean.ProvinceBean;
import tad.bean.AddressDatasBean.WardBean;

public class AddressBean {
	private ArrayList<WardBean> wardBean;
	private ArrayList<DistrictBean> districtBean;
	private ArrayList<ProvinceBean> provinceBean;

	public AddressBean() {
		wardBean = new ArrayList<>();
		districtBean = new ArrayList<>();
		provinceBean = new ArrayList<>();
	}

	public ArrayList<WardBean> getWardBean() {
		return wardBean;
	}

	public void setWardBean(ArrayList<WardBean> wardBean) {
		this.wardBean = wardBean;
	}

	public ArrayList<DistrictBean> getDistrictBean() {
		return districtBean;
	}

	public void setDistrictBean(ArrayList<DistrictBean> districtBean) {
		this.districtBean = districtBean;
	}

	public ArrayList<ProvinceBean> getProvinceBean() {
		return provinceBean;
	}

	public void setProvinceBean(ArrayList<ProvinceBean> provinceBean) {
		this.provinceBean = provinceBean;
	}
}

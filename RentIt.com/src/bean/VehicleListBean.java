package bean;

public class VehicleListBean {
	
	private int vehicleId;
	private String vehicleNo;
	private String vehicleModel;
	private int vehicleCapacity;
	private String driverName;
	
	
	public VehicleListBean(int vehicleId,String vehicleNo, String vehicleModel, int vehicleCapacity, String driverName) {
		
		this.vehicleId= vehicleId;
		this.vehicleNo = vehicleNo;
		this.vehicleModel = vehicleModel;
		this.vehicleCapacity = vehicleCapacity;
		this.driverName = driverName;
	}
	
	
	public VehicleListBean(String vehicleNo,String vehicleModel, int vehicleCapacity, String driverName) {
		super();
		this.vehicleNo = vehicleNo;
		this.vehicleModel = vehicleModel;
		this.vehicleCapacity = vehicleCapacity;
		this.driverName = driverName;
	}




	public int getVehicleId() {
		return vehicleId;
	}


	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}


	public String getVehicleNo() {
		return vehicleNo;
	}
	public void setVehicleNo(String vehicleNo) {
		this.vehicleNo = vehicleNo;
	}
	public String getVehicleModel() {
		return vehicleModel;
	}
	public void setVehicleModel(String vehicleModel) {
		this.vehicleModel = vehicleModel;
	}
	public int getVehicleCapacity() {
		return vehicleCapacity;
	}
	public void setVehicleCapacity(int vehicleCapacity) {
		this.vehicleCapacity = vehicleCapacity;
	}
	public String getDriverName() {
		return driverName;
	}
	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

}

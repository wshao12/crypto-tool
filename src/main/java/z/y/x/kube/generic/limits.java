package z.y.x.kube.generic;

public class limits {
	
	private String memory;
	private String cpu;
	private String ephemeral_storage;
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory = memory;
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public String getEphemeral_storage() {
		return ephemeral_storage;
	}
	public void setEphemeral_storage(String ephemeral_storage) {
		this.ephemeral_storage = ephemeral_storage;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cpu == null) ? 0 : cpu.hashCode());
		result = prime * result + ((ephemeral_storage == null) ? 0 : ephemeral_storage.hashCode());
		result = prime * result + ((memory == null) ? 0 : memory.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		limits other = (limits) obj;
		if (cpu == null) {
			if (other.cpu != null)
				return false;
		} else if (!cpu.equals(other.cpu))
			return false;
		if (ephemeral_storage == null) {
			if (other.ephemeral_storage != null)
				return false;
		} else if (!ephemeral_storage.equals(other.ephemeral_storage))
			return false;
		if (memory == null) {
			if (other.memory != null)
				return false;
		} else if (!memory.equals(other.memory))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "limits [memory=" + memory + ", cpu=" + cpu + ", ephemeral_storage=" + ephemeral_storage + "]";
	}
	
	

}

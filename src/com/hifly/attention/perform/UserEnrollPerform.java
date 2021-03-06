package com.hifly.attention.perform;

import java.util.Iterator;

import com.hifly.attention.client.User;
import com.hifly.attention.dao.UserDAO;
import com.hifly.attention.debuger.Debuger;
import com.hifly.attention.serverCore.MessageServer;
import com.hifly.attention.serverCore.SignalKey;
import com.hifly.attention.serverCore.SignalPerform;
import com.hifly.attention.values.Protocol;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserEnrollPerform implements SignalPerform {
	
	private User user;
	
	public UserEnrollPerform(User user) {
		this.user = user;
	}
	
	@Override
	public void performAction(SignalKey signalKey) {
		String bodyData = signalKey.getBodyData();
		Debuger.log(this.toString(), bodyData);
		
		String split[] = bodyData.split(Protocol.SPLIT_MESSAGE);
		String name = split[0];
		String uuid = split[1];
		String stateMessage = split[2];
		String tel = split[3];
		
		if(alreadyExistUser(uuid)){
			Debuger.log(this.toString(), user + " 立加!  start");
			user.sendUTF(Protocol.USER_EXIST_CHECK_PROTOCOL + Protocol.SPLIT_MESSAGE +  Protocol.USER_ENROLL_FAIL_PROTOCOL);
		}
		else {
			user.setName(name);
			user.setUuid(uuid);
			user.setStateMessage(stateMessage);
			user.setTel(tel);
			
			MessageServer.users.put(uuid, user);
			
			if(UserDAO.getInstance().insertUser(uuid, name, tel, stateMessage, user.getIp()) == false){
				user.sendUTF(Protocol.USER_EXIST_CHECK_PROTOCOL + Protocol.SPLIT_MESSAGE +  Protocol.USER_ENROLL_FAIL_PROTOCOL);
				return;
			}
			
			user.sendUTF(Protocol.USER_EXIST_CHECK_PROTOCOL + Protocol.SPLIT_MESSAGE  +  Protocol.USER_ENROLL_SUCCESS_PROTOCOL);
			Debuger.log(this.toString(), user + " 立加!  start");
			Debuger.log(this.toString(), " 殿废 己傍");
		}
	}
	
	
	private boolean alreadyExistUser(String uuid){
		Iterator<String> it = MessageServer.users.keySet().iterator();
		while(it.hasNext()){
			String key = it.next();
			User user = MessageServer.users.get(key);
			if(uuid.equals(user.getUuid())){
				return true;
			}
		}
		return false;
	}
}

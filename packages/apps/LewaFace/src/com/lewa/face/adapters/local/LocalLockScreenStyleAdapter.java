package com.lewa.face.adapters.local;


import java.io.Serializable;
import java.util.ArrayList;


import com.lewa.face.pojos.ThemeBase;
import com.lewa.face.preview.slide.local.LockScreenStyle;
import com.lewa.face.util.ThemeConstants;
import com.lewa.face.util.ThemeHelper;
import com.lewa.face.util.ThemeUtil;

import android.content.Context;
import android.content.Intent;

import android.os.Handler;
import android.view.View;

/**
 * 
 * @author fulw
 *
 */
public class LocalLockScreenStyleAdapter extends ThumbnailLocalAdapter{
    
    private static final String TAG = LocalLockScreenStyleAdapter.class.getSimpleName();
    
    
    public LocalLockScreenStyleAdapter(Context context,ArrayList<ThemeBase> themeBases,int themeType,Handler handler){
        super(context, themeBases, themeType, handler);
    	
    }
    
    @Override
    public void onClick(View v) {
        
        Intent intent = new Intent();
        intent.setClass(mContext, LockScreenStyle.class);
        intent.putExtra(ThemeConstants.THEMEBASE, (Serializable)v.getTag());
        mContext.startActivity(intent);
    }
    
    @Override
	protected ArrayList<ThemeBase> updateThemeBases() {
		// TODO Auto-generated method stub
		return ThemeHelper.getThemeBases(mContext, ThemeConstants.THEME_LOCAL, ThemeConstants.LOCKSCREEN);
	}
    
    @Override
    protected void attachLabel(ThemeBase themeBase,int position) {
        if(sharedPreferences.getString("lockscreen", ThemeConstants.DEFAULT_THEME_PKG).equals(themeBase.getPkg())){
            statusFlags.put(position, statusFlagBitmap);
        } 
    }

    @Override
    protected String getThumbnailPath(ThemeBase themeBase) {
        // TODO Auto-generated method stub
        return new StringBuilder().append(ThemeConstants.THEME_LOCAL_THUMBNAIL).append("/").append(ThemeConstants.THEME_THUMBNAIL_LOCKSCREEN_PREFIX).append(ThemeUtil.getNameNoBuffix(themeBase.getPkg())).toString();
    }
}
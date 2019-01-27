// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-8685-OUT,alpha-6222-OUT;n:type:ShaderForge.SFN_Color,id:6659,x:31646,y:32635,ptovrint:False,ptlb:HighStamina,ptin:_HighStamina,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9034483,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:8615,x:31646,y:32457,ptovrint:False,ptlb:LowStamina,ptin:_LowStamina,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1232699,c2:0.1517718,c3:0.4411765,c4:1;n:type:ShaderForge.SFN_Lerp,id:8685,x:32192,y:32713,varname:node_8685,prsc:2|A-8615-RGB,B-6659-RGB,T-7892-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2685,x:30789,y:32925,ptovrint:False,ptlb:StaminaTotal,ptin:_StaminaTotal,varname:node_4600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Divide,id:8336,x:31194,y:32692,varname:node_8336,prsc:2|A-894-OUT,B-2685-OUT;n:type:ShaderForge.SFN_TexCoord,id:2136,x:31652,y:32960,varname:node_2136,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5150,x:31825,y:32960,varname:node_5150,prsc:2|A-2136-UVOUT,B-8322-OUT;n:type:ShaderForge.SFN_Vector2,id:8322,x:31652,y:33109,varname:node_8322,prsc:2,v1:1,v2:4;n:type:ShaderForge.SFN_Panner,id:8324,x:31975,y:32960,varname:node_8324,prsc:2,spu:1,spv:0|UVIN-5150-OUT,DIST-2809-OUT;n:type:ShaderForge.SFN_Floor,id:6420,x:32291,y:32960,varname:node_6420,prsc:2|IN-3199-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3199,x:32132,y:32960,varname:node_3199,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8324-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:6222,x:32454,y:32960,varname:node_6222,prsc:2|IN-6420-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5656,x:30774,y:32692,ptovrint:False,ptlb:StaminaCurrent,ptin:_StaminaCurrent,varname:_HealthTotal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Get,id:7892,x:31936,y:32759,varname:node_7892,prsc:2|IN-6965-OUT;n:type:ShaderForge.SFN_Set,id:6965,x:31498,y:32663,varname:node_6965,prsc:2|IN-8336-OUT;n:type:ShaderForge.SFN_Get,id:5872,x:31631,y:33223,varname:node_5872,prsc:2|IN-6965-OUT;n:type:ShaderForge.SFN_OneMinus,id:2809,x:31825,y:33121,varname:node_2809,prsc:2|IN-5872-OUT;n:type:ShaderForge.SFN_Clamp,id:894,x:31013,y:32692,varname:node_894,prsc:2|IN-5656-OUT,MIN-3024-OUT,MAX-2685-OUT;n:type:ShaderForge.SFN_Vector1,id:3024,x:30687,y:32771,varname:node_3024,prsc:2,v1:0;proporder:6659-8615-2685-5656;pass:END;sub:END;*/

Shader "Shader Forge/StaminaBar_HS" {
    Properties {
        _HighStamina ("HighStamina", Color) = (0.9034483,1,0,1)
        _LowStamina ("LowStamina", Color) = (0.1232699,0.1517718,0.4411765,1)
        _StaminaTotal ("StaminaTotal", Float ) = 5
        _StaminaCurrent ("StaminaCurrent", Float ) = 5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _HighStamina;
            uniform float4 _LowStamina;
            uniform float _StaminaTotal;
            uniform float _StaminaCurrent;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_8336 = (clamp(_StaminaCurrent,0.0,_StaminaTotal)/_StaminaTotal);
                float node_6965 = node_8336;
                float3 emissive = lerp(_LowStamina.rgb,_HighStamina.rgb,node_6965);
                float3 finalColor = emissive;
                return fixed4(finalColor,(1.0 - floor(((i.uv0*float2(1,4))+(1.0 - node_6965)*float2(1,0)).r)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

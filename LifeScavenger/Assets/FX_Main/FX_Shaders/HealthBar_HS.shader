// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-6193-OUT,alpha-646-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31719,y:32674,ptovrint:False,ptlb:GreenHp,ptin:_GreenHp,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.8161765,c3:0.1576064,c4:1;n:type:ShaderForge.SFN_Color,id:6146,x:31719,y:32496,ptovrint:False,ptlb:RedHp,ptin:_RedHp,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:6193,x:32265,y:32752,varname:node_6193,prsc:2|A-6146-RGB,B-7241-RGB,T-6834-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4600,x:30840,y:32864,ptovrint:False,ptlb:HealthTotal,ptin:_HealthTotal,varname:node_4600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Divide,id:4148,x:31398,y:32739,varname:node_4148,prsc:2|A-8321-OUT,B-4600-OUT;n:type:ShaderForge.SFN_TexCoord,id:1060,x:31725,y:32999,varname:node_1060,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:8498,x:31898,y:32999,varname:node_8498,prsc:2|A-1060-UVOUT,B-7375-OUT;n:type:ShaderForge.SFN_Vector2,id:7375,x:31725,y:33148,varname:node_7375,prsc:2,v1:1,v2:4;n:type:ShaderForge.SFN_Panner,id:2295,x:32048,y:32999,varname:node_2295,prsc:2,spu:1,spv:0|UVIN-8498-OUT,DIST-7981-OUT;n:type:ShaderForge.SFN_Floor,id:5446,x:32364,y:32999,varname:node_5446,prsc:2|IN-7623-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7623,x:32205,y:32999,varname:node_7623,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2295-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:646,x:32527,y:32999,varname:node_646,prsc:2|IN-5446-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5816,x:30930,y:32718,ptovrint:False,ptlb:HealthCurrent,ptin:_HealthCurrent,varname:_HealthTotal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Get,id:6834,x:32048,y:32798,varname:node_6834,prsc:2|IN-6951-OUT;n:type:ShaderForge.SFN_Set,id:6951,x:31593,y:32704,varname:HealthPercentage,prsc:2|IN-4148-OUT;n:type:ShaderForge.SFN_Get,id:9651,x:31704,y:33262,varname:node_9651,prsc:2|IN-6951-OUT;n:type:ShaderForge.SFN_OneMinus,id:7981,x:31898,y:33160,varname:node_7981,prsc:2|IN-9651-OUT;n:type:ShaderForge.SFN_Clamp,id:8321,x:31196,y:32702,varname:node_8321,prsc:2|IN-5816-OUT,MIN-7109-OUT,MAX-4600-OUT;n:type:ShaderForge.SFN_Vector1,id:7109,x:30897,y:32770,varname:node_7109,prsc:2,v1:0;proporder:7241-6146-4600-5816;pass:END;sub:END;*/

Shader "Shader Forge/HealthBar_HS" {
    Properties {
        _GreenHp ("GreenHp", Color) = (0,0.8161765,0.1576064,1)
        _RedHp ("RedHp", Color) = (1,0,0,1)
        _HealthTotal ("HealthTotal", Float ) = 5
        _HealthCurrent ("HealthCurrent", Float ) = 4
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
            uniform float4 _GreenHp;
            uniform float4 _RedHp;
            uniform float _HealthTotal;
            uniform float _HealthCurrent;
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
                float HealthPercentage = (clamp(_HealthCurrent,0.0,_HealthTotal)/_HealthTotal);
                float3 emissive = lerp(_RedHp.rgb,_GreenHp.rgb,HealthPercentage);
                float3 finalColor = emissive;
                return fixed4(finalColor,(1.0 - floor(((i.uv0*float2(1,4))+(1.0 - HealthPercentage)*float2(1,0)).r)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

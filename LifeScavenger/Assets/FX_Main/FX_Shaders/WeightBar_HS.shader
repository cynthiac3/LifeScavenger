// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-9376-OUT,alpha-1654-OUT;n:type:ShaderForge.SFN_Color,id:9882,x:31743,y:32648,ptovrint:False,ptlb:WeightEmpty,ptin:_WeightEmpty,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.8344827,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:446,x:31743,y:32470,ptovrint:False,ptlb:WeightFull,ptin:_WeightFull,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2627451,c2:0.2627451,c3:0.2627451,c4:1;n:type:ShaderForge.SFN_Lerp,id:9376,x:32289,y:32726,varname:node_9376,prsc:2|A-446-RGB,B-9882-RGB,T-6756-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9424,x:30970,y:32816,ptovrint:False,ptlb:WeightMax,ptin:_WeightMax,varname:node_4600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Divide,id:2626,x:31403,y:32676,varname:node_2626,prsc:2|A-8646-OUT,B-9424-OUT;n:type:ShaderForge.SFN_TexCoord,id:4044,x:31749,y:32973,varname:node_4044,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1020,x:31922,y:32973,varname:node_1020,prsc:2|A-4044-UVOUT,B-168-OUT;n:type:ShaderForge.SFN_Vector2,id:168,x:31749,y:33122,varname:node_168,prsc:2,v1:1,v2:4;n:type:ShaderForge.SFN_Panner,id:7201,x:32072,y:32973,varname:node_7201,prsc:2,spu:1,spv:0|UVIN-1020-OUT,DIST-3269-OUT;n:type:ShaderForge.SFN_Floor,id:5862,x:32388,y:32973,varname:node_5862,prsc:2|IN-535-OUT;n:type:ShaderForge.SFN_ComponentMask,id:535,x:32229,y:32973,varname:node_535,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7201-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:1654,x:32551,y:32973,varname:node_1654,prsc:2|IN-5862-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1752,x:30970,y:32691,ptovrint:False,ptlb:WeightCurrent,ptin:_WeightCurrent,varname:_HealthTotal_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Get,id:6756,x:32072,y:32772,varname:node_6756,prsc:2|IN-4342-OUT;n:type:ShaderForge.SFN_Set,id:4342,x:31569,y:32676,varname:node_4342,prsc:2|IN-2626-OUT;n:type:ShaderForge.SFN_Get,id:7445,x:31728,y:33236,varname:node_7445,prsc:2|IN-4342-OUT;n:type:ShaderForge.SFN_OneMinus,id:3269,x:31922,y:33134,varname:node_3269,prsc:2|IN-7445-OUT;n:type:ShaderForge.SFN_Clamp,id:8646,x:31220,y:32676,varname:node_8646,prsc:2|IN-1752-OUT,MIN-2135-OUT,MAX-9424-OUT;n:type:ShaderForge.SFN_Vector1,id:2135,x:30970,y:32740,varname:node_2135,prsc:2,v1:0;proporder:9882-446-9424-1752;pass:END;sub:END;*/

Shader "Shader Forge/WeightBar_HS" {
    Properties {
        _WeightEmpty ("WeightEmpty", Color) = (0,0.8344827,1,1)
        _WeightFull ("WeightFull", Color) = (0.2627451,0.2627451,0.2627451,1)
        _WeightMax ("WeightMax", Float ) = 5
        _WeightCurrent ("WeightCurrent", Float ) = 4
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
            uniform float4 _WeightEmpty;
            uniform float4 _WeightFull;
            uniform float _WeightMax;
            uniform float _WeightCurrent;
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
                float node_4342 = (clamp(_WeightCurrent,0.0,_WeightMax)/_WeightMax);
                float3 emissive = lerp(_WeightFull.rgb,_WeightEmpty.rgb,node_4342);
                float3 finalColor = emissive;
                return fixed4(finalColor,(1.0 - floor(((i.uv0*float2(1,4))+(1.0 - node_4342)*float2(1,0)).r)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-4058-OUT,alpha-1327-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9790,x:31393,y:32881,ptovrint:False,ptlb:StaminaTotal,ptin:_StaminaTotal,varname:node_9790,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_ValueProperty,id:9913,x:31393,y:32735,ptovrint:False,ptlb:StaminaCurrent,ptin:_StaminaCurrent,varname:node_9913,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Vector1,id:2789,x:31393,y:32803,varname:node_2789,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp,id:7756,x:31587,y:32735,varname:node_7756,prsc:2|IN-9913-OUT,MIN-2789-OUT,MAX-9790-OUT;n:type:ShaderForge.SFN_Divide,id:8058,x:31746,y:32735,varname:node_8058,prsc:2|A-7756-OUT,B-9790-OUT;n:type:ShaderForge.SFN_Color,id:6931,x:32253,y:32526,ptovrint:False,ptlb:LowStamina,ptin:_LowStamina,varname:node_6931,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.03275859,c3:0.25,c4:1;n:type:ShaderForge.SFN_Color,id:2362,x:32253,y:32732,ptovrint:False,ptlb:HighStamina,ptin:_HighStamina,varname:node_2362,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9862069,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:4058,x:32465,y:32732,varname:node_4058,prsc:2|A-6931-RGB,B-2362-RGB,T-8058-OUT;n:type:ShaderForge.SFN_TexCoord,id:2312,x:31716,y:32972,varname:node_2312,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector2,id:2654,x:31716,y:33115,varname:node_2654,prsc:2,v1:1,v2:4;n:type:ShaderForge.SFN_OneMinus,id:9997,x:31716,y:33201,varname:node_9997,prsc:2|IN-8058-OUT;n:type:ShaderForge.SFN_OneMinus,id:1327,x:32591,y:32972,varname:node_1327,prsc:2|IN-404-OUT;n:type:ShaderForge.SFN_Floor,id:404,x:32433,y:32972,varname:node_404,prsc:2|IN-1040-OUT;n:type:ShaderForge.SFN_Multiply,id:7955,x:31891,y:32972,varname:node_7955,prsc:2|A-2312-UVOUT,B-2654-OUT;n:type:ShaderForge.SFN_Panner,id:8826,x:32101,y:32972,varname:node_8826,prsc:2,spu:1,spv:1|UVIN-7955-OUT,DIST-9997-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1040,x:32281,y:32972,varname:node_1040,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8826-UVOUT;proporder:9790-9913-6931-2362;pass:END;sub:END;*/

Shader "Shader Forge/StaminaBar_HS" {
    Properties {
        _StaminaTotal ("StaminaTotal", Float ) = 5
        _StaminaCurrent ("StaminaCurrent", Float ) = 4
        _LowStamina ("LowStamina", Color) = (0,0.03275859,0.25,1)
        _HighStamina ("HighStamina", Color) = (0.9862069,1,0,1)
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
            uniform float _StaminaTotal;
            uniform float _StaminaCurrent;
            uniform float4 _LowStamina;
            uniform float4 _HighStamina;
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
                float node_8058 = (clamp(_StaminaCurrent,0.0,_StaminaTotal)/_StaminaTotal);
                float3 emissive = lerp(_LowStamina.rgb,_HighStamina.rgb,node_8058);
                float3 finalColor = emissive;
                return fixed4(finalColor,(1.0 - floor(((i.uv0*float2(1,4))+(1.0 - node_8058)*float2(1,1)).r)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

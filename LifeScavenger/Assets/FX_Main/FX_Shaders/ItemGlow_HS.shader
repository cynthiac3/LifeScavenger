// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-6489-OUT,alpha-1637-OUT;n:type:ShaderForge.SFN_Tex2d,id:3231,x:31650,y:32890,ptovrint:False,ptlb:node_920,ptin:_node_920,varname:node_920,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7952da74ea3f5ac4393a7d573332e124,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2567,x:31889,y:32890,varname:node_2567,prsc:2|A-3231-RGB,B-1761-RGB;n:type:ShaderForge.SFN_Multiply,id:1274,x:32174,y:33018,varname:node_1274,prsc:2|A-3231-R,B-1761-A;n:type:ShaderForge.SFN_VertexColor,id:1761,x:31745,y:33065,varname:node_1761,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:1637,x:32410,y:33018,varname:node_1637,prsc:2|IN-1274-OUT;n:type:ShaderForge.SFN_Power,id:8799,x:32148,y:32816,varname:node_8799,prsc:2|VAL-2567-OUT,EXP-7143-OUT;n:type:ShaderForge.SFN_Vector1,id:3665,x:32086,y:32512,varname:node_3665,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Time,id:4486,x:31327,y:32645,varname:node_4486,prsc:2;n:type:ShaderForge.SFN_Sin,id:8690,x:31722,y:32657,varname:node_8690,prsc:2|IN-650-OUT;n:type:ShaderForge.SFN_RemapRange,id:7143,x:31889,y:32657,varname:node_7143,prsc:2,frmn:-1,frmx:1,tomn:0.2,tomx:3|IN-8690-OUT;n:type:ShaderForge.SFN_Multiply,id:650,x:31537,y:32657,varname:node_650,prsc:2|A-4486-T,B-1705-OUT;n:type:ShaderForge.SFN_Color,id:4595,x:32345,y:32518,ptovrint:False,ptlb:GlowColor,ptin:_GlowColor,varname:node_4595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.09019608,c2:0.8862745,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3576,x:32437,y:32707,varname:node_3576,prsc:2|A-4595-RGB,B-8799-OUT;n:type:ShaderForge.SFN_Slider,id:1705,x:31124,y:32984,ptovrint:False,ptlb:GlowSpeed,ptin:_GlowSpeed,varname:node_1705,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:1,max:4;n:type:ShaderForge.SFN_Multiply,id:6489,x:32527,y:32832,varname:node_6489,prsc:2|A-3576-OUT,B-1274-OUT;n:type:ShaderForge.SFN_Multiply,id:6324,x:32172,y:32600,varname:node_6324,prsc:2|A-7143-OUT,B-8799-OUT;proporder:3231-4595-1705;pass:END;sub:END;*/

Shader "Shader Forge/ItemGlow_HS" {
    Properties {
        _node_920 ("node_920", 2D) = "white" {}
        _GlowColor ("GlowColor", Color) = (0.09019608,0.8862745,1,1)
        _GlowSpeed ("GlowSpeed", Range(0.1, 4)) = 1
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
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_920; uniform float4 _node_920_ST;
            uniform float4 _GlowColor;
            uniform float _GlowSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _node_920_var = tex2D(_node_920,TRANSFORM_TEX(i.uv0, _node_920));
                float4 node_4486 = _Time;
                float node_7143 = (sin((node_4486.g*_GlowSpeed))*1.4+1.6);
                float3 node_8799 = pow((_node_920_var.rgb*i.vertexColor.rgb),node_7143);
                float node_1274 = (_node_920_var.r*i.vertexColor.a);
                float3 emissive = ((_GlowColor.rgb*node_8799)*node_1274);
                float3 finalColor = emissive;
                return fixed4(finalColor,saturate(node_1274));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

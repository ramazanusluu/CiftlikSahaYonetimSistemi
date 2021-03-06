PGDMP     3    6    
            z            ciftliksahayonetim    14.2    14.2 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24673    ciftliksahayonetim    DATABASE     o   CREATE DATABASE ciftliksahayonetim WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
 "   DROP DATABASE ciftliksahayonetim;
                postgres    false            ?            1259    24684    asi    TABLE     ?  CREATE TABLE public.asi (
    sira_no integer NOT NULL,
    kupe_no character varying(250) NOT NULL,
    i_kupe_no character varying(250) NOT NULL,
    cinsi character varying(250) NOT NULL,
    cinsiyet character varying(250) NOT NULL,
    asi_tarih character varying(250) NOT NULL,
    asi character varying(250) NOT NULL,
    asi_marka character varying(250) NOT NULL,
    diger_tarih character varying(250) NOT NULL,
    veteriner character varying(250) NOT NULL
);
    DROP TABLE public.asi;
       public         heap    postgres    false            ?            1259    24683    asi_sira_no_seq    SEQUENCE     ?   CREATE SEQUENCE public.asi_sira_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.asi_sira_no_seq;
       public          postgres    false    212            ?           0    0    asi_sira_no_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.asi_sira_no_seq OWNED BY public.asi.sira_no;
          public          postgres    false    211            ?            1259    24693    ciftlik    TABLE     J  CREATE TABLE public.ciftlik (
    id integer NOT NULL,
    isletme_no character varying(250) NOT NULL,
    name character varying(250) NOT NULL,
    adres character varying(250) NOT NULL,
    telefon character varying(250) NOT NULL,
    kurulus_yil character varying(250) NOT NULL,
    kapasite character varying(250) NOT NULL
);
    DROP TABLE public.ciftlik;
       public         heap    postgres    false            ?            1259    24692    ciftlik_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ciftlik_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ciftlik_id_seq;
       public          postgres    false    214            ?           0    0    ciftlik_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ciftlik_id_seq OWNED BY public.ciftlik.id;
          public          postgres    false    213            ?            1259    24702    ekipman    TABLE     ?  CREATE TABLE public.ekipman (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    cinsi character varying(250) NOT NULL,
    marka character varying(250) NOT NULL,
    model character varying(250) NOT NULL,
    fiyat character varying(250) NOT NULL,
    alim_tarihi character varying(250) NOT NULL,
    alan_personel character varying(250) NOT NULL,
    kullanim_amaci character varying(250) NOT NULL
);
    DROP TABLE public.ekipman;
       public         heap    postgres    false            ?            1259    24701    ekipman_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ekipman_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ekipman_id_seq;
       public          postgres    false    216            ?           0    0    ekipman_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ekipman_id_seq OWNED BY public.ekipman.id;
          public          postgres    false    215            ?            1259    24711    fatura    TABLE     g  CREATE TABLE public.fatura (
    fatura_no integer NOT NULL,
    isletme_no character varying(250) NOT NULL,
    isletme_adi character varying(250) NOT NULL,
    isletme_adres character varying(250) NOT NULL,
    isletme_telefon character varying(250) NOT NULL,
    tahsilat_no character varying(250) NOT NULL,
    tarih character varying(250) NOT NULL,
    type character varying(250) NOT NULL,
    fiyat character varying(250) NOT NULL,
    kdv_fiyat character varying(250) NOT NULL,
    name character varying(250) NOT NULL,
    tcno character varying(250) NOT NULL,
    adres character varying(250) NOT NULL
);
    DROP TABLE public.fatura;
       public         heap    postgres    false            ?            1259    24710    fatura_fatura_no_seq    SEQUENCE     ?   CREATE SEQUENCE public.fatura_fatura_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.fatura_fatura_no_seq;
       public          postgres    false    218            ?           0    0    fatura_fatura_no_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.fatura_fatura_no_seq OWNED BY public.fatura.fatura_no;
          public          postgres    false    217            ?            1259    24720    gelir    TABLE     ?  CREATE TABLE public.gelir (
    sira_no integer NOT NULL,
    tarih character varying(250) NOT NULL,
    gelir_type character varying(250) NOT NULL,
    miktar character varying(250) NOT NULL,
    personel character varying(250) NOT NULL,
    tahsilat character varying(250) NOT NULL,
    name character varying(250) NOT NULL,
    tcno character varying(250) NOT NULL,
    telefon character varying(250) NOT NULL,
    adres character varying(250) NOT NULL
);
    DROP TABLE public.gelir;
       public         heap    postgres    false            ?            1259    24784    gelir_musteri    TABLE     ?   CREATE TABLE public.gelir_musteri (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    tcno character varying(250) NOT NULL,
    telefon character varying(250) NOT NULL,
    adres character varying(250) NOT NULL
);
 !   DROP TABLE public.gelir_musteri;
       public         heap    postgres    false            ?            1259    24783    gelir_musteri_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.gelir_musteri_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.gelir_musteri_id_seq;
       public          postgres    false    232            ?           0    0    gelir_musteri_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.gelir_musteri_id_seq OWNED BY public.gelir_musteri.id;
          public          postgres    false    231            ?            1259    24719    gelir_sira_no_seq    SEQUENCE     ?   CREATE SEQUENCE public.gelir_sira_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.gelir_sira_no_seq;
       public          postgres    false    220            ?           0    0    gelir_sira_no_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.gelir_sira_no_seq OWNED BY public.gelir.sira_no;
          public          postgres    false    219            ?            1259    24729    gider    TABLE     ?  CREATE TABLE public.gider (
    sira_no integer NOT NULL,
    tarih character varying(250) NOT NULL,
    gider_type character varying(250) NOT NULL,
    miktar character varying(250) NOT NULL,
    personel character varying(250) NOT NULL,
    tahsilat character varying(250) NOT NULL,
    name character varying(250) NOT NULL,
    tcno character varying(250) NOT NULL,
    telefon character varying(250) NOT NULL,
    adres character varying(250) NOT NULL
);
    DROP TABLE public.gider;
       public         heap    postgres    false            ?            1259    24793    gider_musteri    TABLE     ?   CREATE TABLE public.gider_musteri (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    tcno character varying(250) NOT NULL,
    telefon character varying(250) NOT NULL,
    adres character varying(250) NOT NULL
);
 !   DROP TABLE public.gider_musteri;
       public         heap    postgres    false            ?            1259    24792    gider_musteri_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.gider_musteri_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.gider_musteri_id_seq;
       public          postgres    false    234            ?           0    0    gider_musteri_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.gider_musteri_id_seq OWNED BY public.gider_musteri.id;
          public          postgres    false    233            ?            1259    24728    gider_sira_no_seq    SEQUENCE     ?   CREATE SEQUENCE public.gider_sira_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.gider_sira_no_seq;
       public          postgres    false    222            ?           0    0    gider_sira_no_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.gider_sira_no_seq OWNED BY public.gider.sira_no;
          public          postgres    false    221            ?            1259    24738    hayvan    TABLE     ?  CREATE TABLE public.hayvan (
    id integer NOT NULL,
    k_kupe_no character varying(250) NOT NULL,
    i_kupe_no character varying(250) NOT NULL,
    name character varying(250) NOT NULL,
    cinsi character varying(250) NOT NULL,
    cinsiyet character varying(250) NOT NULL,
    d_tarih character varying(250) NOT NULL,
    kayit_tarih character varying(250) NOT NULL,
    anne_kupe character varying(250) NOT NULL,
    anne_verim character varying(250) NOT NULL,
    baba_kupe character varying(250) NOT NULL,
    baba_verim character varying(250) NOT NULL,
    verim_puan character varying(250) NOT NULL,
    durum character varying(250) NOT NULL
);
    DROP TABLE public.hayvan;
       public         heap    postgres    false            ?            1259    24737    hayvan_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.hayvan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.hayvan_id_seq;
       public          postgres    false    224            ?           0    0    hayvan_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.hayvan_id_seq OWNED BY public.hayvan.id;
          public          postgres    false    223            ?            1259    24756 	   ilac_depo    TABLE     z  CREATE TABLE public.ilac_depo (
    id integer NOT NULL,
    kayit_tarih character varying(250) NOT NULL,
    name character varying(250) NOT NULL,
    miktar character varying(250) NOT NULL,
    type character varying(250) NOT NULL,
    saklama character varying(250) NOT NULL,
    son_kullanim character varying(250) NOT NULL,
    veteriner character varying(250) NOT NULL
);
    DROP TABLE public.ilac_depo;
       public         heap    postgres    false            ?            1259    24755    ilac_depo_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ilac_depo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ilac_depo_id_seq;
       public          postgres    false    226            ?           0    0    ilac_depo_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ilac_depo_id_seq OWNED BY public.ilac_depo.id;
          public          postgres    false    225            ?            1259    24857 	   kullanici    TABLE     @  CREATE TABLE public.kullanici (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    tcno character varying(250) NOT NULL,
    username character varying(250) NOT NULL,
    password character varying(250) NOT NULL,
    phone character varying(250) NOT NULL,
    type character varying(250) NOT NULL
);
    DROP TABLE public.kullanici;
       public         heap    postgres    false            ?            1259    24856    kullanici_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.kullanici_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.kullanici_id_seq;
       public          postgres    false    248            ?           0    0    kullanici_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.kullanici_id_seq OWNED BY public.kullanici.id;
          public          postgres    false    247            ?            1259    24766    kuru_ot    TABLE     ?  CREATE TABLE public.kuru_ot (
    sira_no integer NOT NULL,
    tarih character varying(250) NOT NULL,
    kapasite character varying(250) NOT NULL,
    rasyon character varying(250) NOT NULL,
    deger character varying(250) NOT NULL,
    gunluk_gider character varying(250) NOT NULL,
    yillik_gider character varying(250) NOT NULL,
    fiyat character varying(250) NOT NULL,
    kucuk_balya character varying(250) NOT NULL,
    buyuk_balya character varying(250) NOT NULL
);
    DROP TABLE public.kuru_ot;
       public         heap    postgres    false            ?            1259    24765    kuru_ot_sira_no_seq    SEQUENCE     ?   CREATE SEQUENCE public.kuru_ot_sira_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.kuru_ot_sira_no_seq;
       public          postgres    false    228            ?           0    0    kuru_ot_sira_no_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.kuru_ot_sira_no_seq OWNED BY public.kuru_ot.sira_no;
          public          postgres    false    227            ?            1259    24775    misafir    TABLE     ?   CREATE TABLE public.misafir (
    id integer NOT NULL,
    ad_soyad character varying(250) NOT NULL,
    tcno character varying(250) NOT NULL,
    ziyaret_tarih character varying(250) NOT NULL,
    neden character varying(250) NOT NULL
);
    DROP TABLE public.misafir;
       public         heap    postgres    false            ?            1259    24675    misafir_arac    TABLE     R  CREATE TABLE public.misafir_arac (
    id integer NOT NULL,
    plaka character varying(250) NOT NULL,
    cinsi character varying(250) NOT NULL,
    sofor_ad character varying(250) NOT NULL,
    sofor_tc character varying(250) NOT NULL,
    gelis_tarih character varying(250) NOT NULL,
    gelis_sebep character varying(250) NOT NULL
);
     DROP TABLE public.misafir_arac;
       public         heap    postgres    false            ?            1259    24674    misafir_arac_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.misafir_arac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.misafir_arac_id_seq;
       public          postgres    false    210            ?           0    0    misafir_arac_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.misafir_arac_id_seq OWNED BY public.misafir_arac.id;
          public          postgres    false    209            ?            1259    24774    misafir_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.misafir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.misafir_id_seq;
       public          postgres    false    230            ?           0    0    misafir_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.misafir_id_seq OWNED BY public.misafir.id;
          public          postgres    false    229            ?            1259    24802    personel    TABLE     ?  CREATE TABLE public.personel (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    tcno character varying(250) NOT NULL,
    cinsiyet character varying(250) NOT NULL,
    telefon character varying(250) NOT NULL,
    adres character varying(250) NOT NULL,
    resim character varying(250) NOT NULL,
    baslama_tarih character varying(250) NOT NULL,
    gorev character varying(250) NOT NULL,
    maas character varying(250) NOT NULL,
    iban character varying(250) NOT NULL
);
    DROP TABLE public.personel;
       public         heap    postgres    false            ?            1259    24801    personel_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.personel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.personel_id_seq;
       public          postgres    false    236            ?           0    0    personel_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.personel_id_seq OWNED BY public.personel.id;
          public          postgres    false    235            ?            1259    24812    rasyon    TABLE     ?  CREATE TABLE public.rasyon (
    id integer NOT NULL,
    b_saman character varying(250) NOT NULL,
    b_kuruot character varying(250) NOT NULL,
    b_silaj character varying(250) NOT NULL,
    b_yem character varying(250) NOT NULL,
    d_saman character varying(250) NOT NULL,
    d_kuruot character varying(250) NOT NULL,
    d_silaj character varying(250) NOT NULL,
    d_yem character varying(250) NOT NULL,
    i_saman character varying(250) NOT NULL,
    i_kuruot character varying(250) NOT NULL,
    i_silaj character varying(250) NOT NULL,
    i_yem character varying(250) NOT NULL,
    saman character varying(250) NOT NULL,
    kuruot character varying(250) NOT NULL,
    silaj character varying(250) NOT NULL,
    yem character varying(250) NOT NULL
);
    DROP TABLE public.rasyon;
       public         heap    postgres    false            ?            1259    24811    rasyon_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.rasyon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rasyon_id_seq;
       public          postgres    false    238            ?           0    0    rasyon_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rasyon_id_seq OWNED BY public.rasyon.id;
          public          postgres    false    237            ?            1259    24821    saman    TABLE     ?  CREATE TABLE public.saman (
    sira_no integer NOT NULL,
    tarih character varying(250) NOT NULL,
    kapasite character varying(250) NOT NULL,
    rasyon character varying(250) NOT NULL,
    deger character varying(250) NOT NULL,
    gunluk_gider character varying(250) NOT NULL,
    yillik_gider character varying(250) NOT NULL,
    fiyat character varying(250) NOT NULL,
    kucuk_balya character varying(250) NOT NULL,
    buyuk_balya character varying(250) NOT NULL
);
    DROP TABLE public.saman;
       public         heap    postgres    false            ?            1259    24820    saman_sira_no_seq    SEQUENCE     ?   CREATE SEQUENCE public.saman_sira_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.saman_sira_no_seq;
       public          postgres    false    240            ?           0    0    saman_sira_no_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.saman_sira_no_seq OWNED BY public.saman.sira_no;
          public          postgres    false    239            ?            1259    24830    silaj    TABLE     ?  CREATE TABLE public.silaj (
    sira_no integer NOT NULL,
    tarih character varying(250) NOT NULL,
    kapasite character varying(250) NOT NULL,
    rasyon character varying(250) NOT NULL,
    deger character varying(250) NOT NULL,
    gunluk_gider character varying(250) NOT NULL,
    yillik_gider character varying(250) NOT NULL,
    fiyat character varying(250) NOT NULL,
    paket character varying(250) NOT NULL
);
    DROP TABLE public.silaj;
       public         heap    postgres    false            ?            1259    24829    silaj_sira_no_seq    SEQUENCE     ?   CREATE SEQUENCE public.silaj_sira_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.silaj_sira_no_seq;
       public          postgres    false    242            ?           0    0    silaj_sira_no_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.silaj_sira_no_seq OWNED BY public.silaj.sira_no;
          public          postgres    false    241            ?            1259    24839    tedavi    TABLE     ?  CREATE TABLE public.tedavi (
    sira_no integer NOT NULL,
    kupe_no character varying(250) NOT NULL,
    i_kupe_no character varying(250) NOT NULL,
    cinsi character varying(250) NOT NULL,
    cinsiyet character varying(250) NOT NULL,
    tedavi_tarih character varying(250) NOT NULL,
    hastalik character varying(250) NOT NULL,
    tedavi character varying(250) NOT NULL,
    ilac character varying(250) NOT NULL,
    veteriner character varying(250) NOT NULL
);
    DROP TABLE public.tedavi;
       public         heap    postgres    false            ?            1259    24838    tedavi_sira_no_seq    SEQUENCE     ?   CREATE SEQUENCE public.tedavi_sira_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tedavi_sira_no_seq;
       public          postgres    false    244            ?           0    0    tedavi_sira_no_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tedavi_sira_no_seq OWNED BY public.tedavi.sira_no;
          public          postgres    false    243            ?            1259    24848    yem    TABLE     ?  CREATE TABLE public.yem (
    sira_no integer NOT NULL,
    tarih character varying(250) NOT NULL,
    kapasite character varying(250) NOT NULL,
    rasyon character varying(250) NOT NULL,
    deger character varying(250) NOT NULL,
    gunluk_gider character varying(250) NOT NULL,
    yillik_gider character varying(250) NOT NULL,
    fiyat character varying(250) NOT NULL,
    paket character varying(250) NOT NULL
);
    DROP TABLE public.yem;
       public         heap    postgres    false            ?            1259    24847    yem_sira_no_seq    SEQUENCE     ?   CREATE SEQUENCE public.yem_sira_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.yem_sira_no_seq;
       public          postgres    false    246            ?           0    0    yem_sira_no_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.yem_sira_no_seq OWNED BY public.yem.sira_no;
          public          postgres    false    245            ?           2604    24687    asi sira_no    DEFAULT     j   ALTER TABLE ONLY public.asi ALTER COLUMN sira_no SET DEFAULT nextval('public.asi_sira_no_seq'::regclass);
 :   ALTER TABLE public.asi ALTER COLUMN sira_no DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    24696 
   ciftlik id    DEFAULT     h   ALTER TABLE ONLY public.ciftlik ALTER COLUMN id SET DEFAULT nextval('public.ciftlik_id_seq'::regclass);
 9   ALTER TABLE public.ciftlik ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            ?           2604    24705 
   ekipman id    DEFAULT     h   ALTER TABLE ONLY public.ekipman ALTER COLUMN id SET DEFAULT nextval('public.ekipman_id_seq'::regclass);
 9   ALTER TABLE public.ekipman ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    24714    fatura fatura_no    DEFAULT     t   ALTER TABLE ONLY public.fatura ALTER COLUMN fatura_no SET DEFAULT nextval('public.fatura_fatura_no_seq'::regclass);
 ?   ALTER TABLE public.fatura ALTER COLUMN fatura_no DROP DEFAULT;
       public          postgres    false    217    218    218            ?           2604    24723    gelir sira_no    DEFAULT     n   ALTER TABLE ONLY public.gelir ALTER COLUMN sira_no SET DEFAULT nextval('public.gelir_sira_no_seq'::regclass);
 <   ALTER TABLE public.gelir ALTER COLUMN sira_no DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    24787    gelir_musteri id    DEFAULT     t   ALTER TABLE ONLY public.gelir_musteri ALTER COLUMN id SET DEFAULT nextval('public.gelir_musteri_id_seq'::regclass);
 ?   ALTER TABLE public.gelir_musteri ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            ?           2604    24732    gider sira_no    DEFAULT     n   ALTER TABLE ONLY public.gider ALTER COLUMN sira_no SET DEFAULT nextval('public.gider_sira_no_seq'::regclass);
 <   ALTER TABLE public.gider ALTER COLUMN sira_no DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    24796    gider_musteri id    DEFAULT     t   ALTER TABLE ONLY public.gider_musteri ALTER COLUMN id SET DEFAULT nextval('public.gider_musteri_id_seq'::regclass);
 ?   ALTER TABLE public.gider_musteri ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            ?           2604    24741 	   hayvan id    DEFAULT     f   ALTER TABLE ONLY public.hayvan ALTER COLUMN id SET DEFAULT nextval('public.hayvan_id_seq'::regclass);
 8   ALTER TABLE public.hayvan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            ?           2604    24759    ilac_depo id    DEFAULT     l   ALTER TABLE ONLY public.ilac_depo ALTER COLUMN id SET DEFAULT nextval('public.ilac_depo_id_seq'::regclass);
 ;   ALTER TABLE public.ilac_depo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    24860    kullanici id    DEFAULT     l   ALTER TABLE ONLY public.kullanici ALTER COLUMN id SET DEFAULT nextval('public.kullanici_id_seq'::regclass);
 ;   ALTER TABLE public.kullanici ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248            ?           2604    24769    kuru_ot sira_no    DEFAULT     r   ALTER TABLE ONLY public.kuru_ot ALTER COLUMN sira_no SET DEFAULT nextval('public.kuru_ot_sira_no_seq'::regclass);
 >   ALTER TABLE public.kuru_ot ALTER COLUMN sira_no DROP DEFAULT;
       public          postgres    false    228    227    228            ?           2604    24778 
   misafir id    DEFAULT     h   ALTER TABLE ONLY public.misafir ALTER COLUMN id SET DEFAULT nextval('public.misafir_id_seq'::regclass);
 9   ALTER TABLE public.misafir ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    24678    misafir_arac id    DEFAULT     r   ALTER TABLE ONLY public.misafir_arac ALTER COLUMN id SET DEFAULT nextval('public.misafir_arac_id_seq'::regclass);
 >   ALTER TABLE public.misafir_arac ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?           2604    24805    personel id    DEFAULT     j   ALTER TABLE ONLY public.personel ALTER COLUMN id SET DEFAULT nextval('public.personel_id_seq'::regclass);
 :   ALTER TABLE public.personel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            ?           2604    24815 	   rasyon id    DEFAULT     f   ALTER TABLE ONLY public.rasyon ALTER COLUMN id SET DEFAULT nextval('public.rasyon_id_seq'::regclass);
 8   ALTER TABLE public.rasyon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            ?           2604    24824    saman sira_no    DEFAULT     n   ALTER TABLE ONLY public.saman ALTER COLUMN sira_no SET DEFAULT nextval('public.saman_sira_no_seq'::regclass);
 <   ALTER TABLE public.saman ALTER COLUMN sira_no DROP DEFAULT;
       public          postgres    false    239    240    240            ?           2604    24833    silaj sira_no    DEFAULT     n   ALTER TABLE ONLY public.silaj ALTER COLUMN sira_no SET DEFAULT nextval('public.silaj_sira_no_seq'::regclass);
 <   ALTER TABLE public.silaj ALTER COLUMN sira_no DROP DEFAULT;
       public          postgres    false    242    241    242            ?           2604    24842    tedavi sira_no    DEFAULT     p   ALTER TABLE ONLY public.tedavi ALTER COLUMN sira_no SET DEFAULT nextval('public.tedavi_sira_no_seq'::regclass);
 =   ALTER TABLE public.tedavi ALTER COLUMN sira_no DROP DEFAULT;
       public          postgres    false    243    244    244            ?           2604    24851    yem sira_no    DEFAULT     j   ALTER TABLE ONLY public.yem ALTER COLUMN sira_no SET DEFAULT nextval('public.yem_sira_no_seq'::regclass);
 :   ALTER TABLE public.yem ALTER COLUMN sira_no DROP DEFAULT;
       public          postgres    false    246    245    246            ?          0    24684    asi 
   TABLE DATA           ~   COPY public.asi (sira_no, kupe_no, i_kupe_no, cinsi, cinsiyet, asi_tarih, asi, asi_marka, diger_tarih, veteriner) FROM stdin;
    public          postgres    false    212   ?       ?          0    24693    ciftlik 
   TABLE DATA           ^   COPY public.ciftlik (id, isletme_no, name, adres, telefon, kurulus_yil, kapasite) FROM stdin;
    public          postgres    false    214   ?       ?          0    24702    ekipman 
   TABLE DATA           s   COPY public.ekipman (id, name, cinsi, marka, model, fiyat, alim_tarihi, alan_personel, kullanim_amaci) FROM stdin;
    public          postgres    false    216   d?       ?          0    24711    fatura 
   TABLE DATA           ?   COPY public.fatura (fatura_no, isletme_no, isletme_adi, isletme_adres, isletme_telefon, tahsilat_no, tarih, type, fiyat, kdv_fiyat, name, tcno, adres) FROM stdin;
    public          postgres    false    218   ʲ       ?          0    24720    gelir 
   TABLE DATA           s   COPY public.gelir (sira_no, tarih, gelir_type, miktar, personel, tahsilat, name, tcno, telefon, adres) FROM stdin;
    public          postgres    false    220   ??       ?          0    24784    gelir_musteri 
   TABLE DATA           G   COPY public.gelir_musteri (id, name, tcno, telefon, adres) FROM stdin;
    public          postgres    false    232   V?       ?          0    24729    gider 
   TABLE DATA           s   COPY public.gider (sira_no, tarih, gider_type, miktar, personel, tahsilat, name, tcno, telefon, adres) FROM stdin;
    public          postgres    false    222   ??       ?          0    24793    gider_musteri 
   TABLE DATA           G   COPY public.gider_musteri (id, name, tcno, telefon, adres) FROM stdin;
    public          postgres    false    234   ??       ?          0    24738    hayvan 
   TABLE DATA           ?   COPY public.hayvan (id, k_kupe_no, i_kupe_no, name, cinsi, cinsiyet, d_tarih, kayit_tarih, anne_kupe, anne_verim, baba_kupe, baba_verim, verim_puan, durum) FROM stdin;
    public          postgres    false    224   ֳ       ?          0    24756 	   ilac_depo 
   TABLE DATA           j   COPY public.ilac_depo (id, kayit_tarih, name, miktar, type, saklama, son_kullanim, veteriner) FROM stdin;
    public          postgres    false    226   8?       ?          0    24857 	   kullanici 
   TABLE DATA           T   COPY public.kullanici (id, name, tcno, username, password, phone, type) FROM stdin;
    public          postgres    false    248   U?       ?          0    24766    kuru_ot 
   TABLE DATA           ?   COPY public.kuru_ot (sira_no, tarih, kapasite, rasyon, deger, gunluk_gider, yillik_gider, fiyat, kucuk_balya, buyuk_balya) FROM stdin;
    public          postgres    false    228   ??       ?          0    24775    misafir 
   TABLE DATA           K   COPY public.misafir (id, ad_soyad, tcno, ziyaret_tarih, neden) FROM stdin;
    public          postgres    false    230   ??       ?          0    24675    misafir_arac 
   TABLE DATA           f   COPY public.misafir_arac (id, plaka, cinsi, sofor_ad, sofor_tc, gelis_tarih, gelis_sebep) FROM stdin;
    public          postgres    false    210   =?       ?          0    24802    personel 
   TABLE DATA           u   COPY public.personel (id, name, tcno, cinsiyet, telefon, adres, resim, baslama_tarih, gorev, maas, iban) FROM stdin;
    public          postgres    false    236   ??       ?          0    24812    rasyon 
   TABLE DATA           ?   COPY public.rasyon (id, b_saman, b_kuruot, b_silaj, b_yem, d_saman, d_kuruot, d_silaj, d_yem, i_saman, i_kuruot, i_silaj, i_yem, saman, kuruot, silaj, yem) FROM stdin;
    public          postgres    false    238    ?       ?          0    24821    saman 
   TABLE DATA           ?   COPY public.saman (sira_no, tarih, kapasite, rasyon, deger, gunluk_gider, yillik_gider, fiyat, kucuk_balya, buyuk_balya) FROM stdin;
    public          postgres    false    240   +?       ?          0    24830    silaj 
   TABLE DATA           r   COPY public.silaj (sira_no, tarih, kapasite, rasyon, deger, gunluk_gider, yillik_gider, fiyat, paket) FROM stdin;
    public          postgres    false    242   h?       ?          0    24839    tedavi 
   TABLE DATA              COPY public.tedavi (sira_no, kupe_no, i_kupe_no, cinsi, cinsiyet, tedavi_tarih, hastalik, tedavi, ilac, veteriner) FROM stdin;
    public          postgres    false    244   ??       ?          0    24848    yem 
   TABLE DATA           p   COPY public.yem (sira_no, tarih, kapasite, rasyon, deger, gunluk_gider, yillik_gider, fiyat, paket) FROM stdin;
    public          postgres    false    246   ݶ       ?           0    0    asi_sira_no_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.asi_sira_no_seq', 1, false);
          public          postgres    false    211            ?           0    0    ciftlik_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ciftlik_id_seq', 1, false);
          public          postgres    false    213            ?           0    0    ekipman_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ekipman_id_seq', 1, true);
          public          postgres    false    215            ?           0    0    fatura_fatura_no_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.fatura_fatura_no_seq', 1, false);
          public          postgres    false    217            ?           0    0    gelir_musteri_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.gelir_musteri_id_seq', 1, true);
          public          postgres    false    231            ?           0    0    gelir_sira_no_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.gelir_sira_no_seq', 1, true);
          public          postgres    false    219            ?           0    0    gider_musteri_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.gider_musteri_id_seq', 1, false);
          public          postgres    false    233            ?           0    0    gider_sira_no_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.gider_sira_no_seq', 1, false);
          public          postgres    false    221            ?           0    0    hayvan_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.hayvan_id_seq', 1, true);
          public          postgres    false    223            ?           0    0    ilac_depo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ilac_depo_id_seq', 1, false);
          public          postgres    false    225            ?           0    0    kullanici_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.kullanici_id_seq', 4, true);
          public          postgres    false    247            ?           0    0    kuru_ot_sira_no_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.kuru_ot_sira_no_seq', 1, false);
          public          postgres    false    227            ?           0    0    misafir_arac_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.misafir_arac_id_seq', 1, true);
          public          postgres    false    209            ?           0    0    misafir_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.misafir_id_seq', 1, true);
          public          postgres    false    229            ?           0    0    personel_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.personel_id_seq', 1, true);
          public          postgres    false    235            ?           0    0    rasyon_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rasyon_id_seq', 1, false);
          public          postgres    false    237            ?           0    0    saman_sira_no_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.saman_sira_no_seq', 1, true);
          public          postgres    false    239            ?           0    0    silaj_sira_no_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.silaj_sira_no_seq', 1, false);
          public          postgres    false    241            ?           0    0    tedavi_sira_no_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tedavi_sira_no_seq', 1, true);
          public          postgres    false    243            ?           0    0    yem_sira_no_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.yem_sira_no_seq', 1, false);
          public          postgres    false    245            ?           2606    24691    asi asi_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.asi
    ADD CONSTRAINT asi_pkey PRIMARY KEY (sira_no);
 6   ALTER TABLE ONLY public.asi DROP CONSTRAINT asi_pkey;
       public            postgres    false    212            ?           2606    24700    ciftlik ciftlik_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ciftlik
    ADD CONSTRAINT ciftlik_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ciftlik DROP CONSTRAINT ciftlik_pkey;
       public            postgres    false    214            ?           2606    24709    ekipman ekipman_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ekipman
    ADD CONSTRAINT ekipman_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ekipman DROP CONSTRAINT ekipman_pkey;
       public            postgres    false    216            ?           2606    24718    fatura fatura_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.fatura
    ADD CONSTRAINT fatura_pkey PRIMARY KEY (fatura_no);
 <   ALTER TABLE ONLY public.fatura DROP CONSTRAINT fatura_pkey;
       public            postgres    false    218            ?           2606    24791     gelir_musteri gelir_musteri_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.gelir_musteri
    ADD CONSTRAINT gelir_musteri_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.gelir_musteri DROP CONSTRAINT gelir_musteri_pkey;
       public            postgres    false    232            ?           2606    24727    gelir gelir_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.gelir
    ADD CONSTRAINT gelir_pkey PRIMARY KEY (sira_no);
 :   ALTER TABLE ONLY public.gelir DROP CONSTRAINT gelir_pkey;
       public            postgres    false    220            ?           2606    24800     gider_musteri gider_musteri_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.gider_musteri
    ADD CONSTRAINT gider_musteri_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.gider_musteri DROP CONSTRAINT gider_musteri_pkey;
       public            postgres    false    234            ?           2606    24736    gider gider_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.gider
    ADD CONSTRAINT gider_pkey PRIMARY KEY (sira_no);
 :   ALTER TABLE ONLY public.gider DROP CONSTRAINT gider_pkey;
       public            postgres    false    222            ?           2606    24745    hayvan hayvan_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.hayvan
    ADD CONSTRAINT hayvan_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.hayvan DROP CONSTRAINT hayvan_pkey;
       public            postgres    false    224            ?           2606    24763    ilac_depo ilac_depo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ilac_depo
    ADD CONSTRAINT ilac_depo_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ilac_depo DROP CONSTRAINT ilac_depo_pkey;
       public            postgres    false    226            ?           2606    24864    kullanici kullanici_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.kullanici
    ADD CONSTRAINT kullanici_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.kullanici DROP CONSTRAINT kullanici_pkey;
       public            postgres    false    248            ?           2606    24773    kuru_ot kuru_ot_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.kuru_ot
    ADD CONSTRAINT kuru_ot_pkey PRIMARY KEY (sira_no);
 >   ALTER TABLE ONLY public.kuru_ot DROP CONSTRAINT kuru_ot_pkey;
       public            postgres    false    228            ?           2606    24682    misafir_arac misafir_arac_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.misafir_arac
    ADD CONSTRAINT misafir_arac_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.misafir_arac DROP CONSTRAINT misafir_arac_pkey;
       public            postgres    false    210            ?           2606    24782    misafir misafir_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.misafir
    ADD CONSTRAINT misafir_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.misafir DROP CONSTRAINT misafir_pkey;
       public            postgres    false    230            ?           2606    24809    personel personel_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_pkey;
       public            postgres    false    236            ?           2606    24819    rasyon rasyon_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.rasyon
    ADD CONSTRAINT rasyon_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.rasyon DROP CONSTRAINT rasyon_pkey;
       public            postgres    false    238            ?           2606    24828    saman saman_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.saman
    ADD CONSTRAINT saman_pkey PRIMARY KEY (sira_no);
 :   ALTER TABLE ONLY public.saman DROP CONSTRAINT saman_pkey;
       public            postgres    false    240            ?           2606    24837    silaj silaj_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.silaj
    ADD CONSTRAINT silaj_pkey PRIMARY KEY (sira_no);
 :   ALTER TABLE ONLY public.silaj DROP CONSTRAINT silaj_pkey;
       public            postgres    false    242            ?           2606    24846    tedavi tedavi_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.tedavi
    ADD CONSTRAINT tedavi_pkey PRIMARY KEY (sira_no);
 <   ALTER TABLE ONLY public.tedavi DROP CONSTRAINT tedavi_pkey;
       public            postgres    false    244            ?           2606    24855    yem yem_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.yem
    ADD CONSTRAINT yem_pkey PRIMARY KEY (sira_no);
 6   ALTER TABLE ONLY public.yem DROP CONSTRAINT yem_pkey;
       public            postgres    false    246            ?      x?????? ? ?      ?   5   x?3?	2000????q??M?I,?L?4426153???4202\1z\\\ ?	?      ?   V   x?3?,)J?.9???371;3/??B77?(;?3Q77?%5?????@7ć????H??D????1'?393?$'3[!????ԢL?=... ?      ?      x?????? ? ?      ?   _   x?3?4202?50?50??H?,K?SN,9????#?r?????%??FƜ??E?????&?f??&??F?F?f?@???%?yI?9\1z\\\ ۟      ?   6   x?3???,J<????????????Ĕ?????????<???$1/?4?+F??? 6?      ?      x?????? ? ?      ?      x?????? ? ?      ?   R   x?3?,)200?L4???K????M?+I??t-?r???tLt?*?? -F????dՀxƜ?E%??91/??F?=... ??      ?      x?????? ? ?      ?   }   x?E?M1D?ɏ?m???ٳ?^??`+?E?_??_?a?y?`o?ց??L%eV?c?E?$Q?T?????#???|?M??l?z??#J?x??????n>|?ݗ?CQ????D|w))?      ?      x?????? ? ?      ?   .   x?3?t???4426153??41?4202?50?50??<:?+F??? ??      ?   F   x?3?46t?t4?4??Ṋ??K-??(-N????4426153??41?4202?50"N??????T?=... '?1      ?   ]   x?3?t???4426153??41?t-?N??4056453??07??M?I,?L??4202?50?50??=?'???"NC?Β"?b???? ?j?      ?      x?3?4?BS(4?BC8?????? t?`      ?   -   x?3?4202?50"NC ?418??L?(C3(????? ?	#      ?      x?????? ? ?      ?   H   x?3?,)200?L4???M?+I??t-?N??4202?50?I???ϙyd~^*g?BfN????Ω?\1z\\\ ???      ?      x?????? ? ?     
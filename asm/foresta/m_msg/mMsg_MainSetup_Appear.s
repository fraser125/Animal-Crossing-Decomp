lbl_803C2820:
/* 803C2820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2824  7C 08 02 A6 */	mflr r0
/* 803C2828  38 A0 00 00 */	li r5, 0
/* 803C282C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C2834  7C 7F 1B 78 */	mr r31, r3
/* 803C2838  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C283C  80 9F 04 64 */	lwz r4, 0x464(r31)
/* 803C2840  4B FF E0 71 */	bl mMsg_LoadMsgData
/* 803C2844  2C 03 00 00 */	cmpwi r3, 0
/* 803C2848  41 82 01 30 */	beq lbl_803C2978
/* 803C284C  80 9F 04 60 */	lwz r4, 0x460(r31)
/* 803C2850  7F E3 FB 78 */	mr r3, r31
/* 803C2854  80 BF 04 68 */	lwz r5, 0x468(r31)
/* 803C2858  4B FF CF A5 */	bl mMsg_Set_client_actor_p
/* 803C285C  80 1F 04 6C */	lwz r0, 0x46c(r31)
/* 803C2860  7F E3 FB 78 */	mr r3, r31
/* 803C2864  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 803C2868  4B FF FC AD */	bl mMsg_sound_spec_change_voice
/* 803C286C  7F E3 FB 78 */	mr r3, r31
/* 803C2870  4B FF FC 19 */	bl mMsg_sound_voice_mode
/* 803C2874  38 00 00 01 */	li r0, 1
/* 803C2878  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C287C  90 1F 04 34 */	stw r0, 0x434(r31)
/* 803C2880  38 80 00 00 */	li r4, 0
/* 803C2884  C0 03 26 18 */	lfs f0, lit_725@l(r3)  /* 0x80642618@l */
/* 803C2888  38 60 FF FF */	li r3, -1
/* 803C288C  90 1F 04 38 */	stw r0, 0x438(r31)
/* 803C2890  38 00 00 04 */	li r0, 4
/* 803C2894  D0 1F 04 24 */	stfs f0, 0x424(r31)
/* 803C2898  D0 1F 04 28 */	stfs f0, 0x428(r31)
/* 803C289C  D0 1F 04 10 */	stfs f0, 0x410(r31)
/* 803C28A0  90 9F 00 34 */	stw r4, 0x34(r31)
/* 803C28A4  90 7F 04 2C */	stw r3, 0x42c(r31)
/* 803C28A8  90 1F 04 30 */	stw r0, 0x430(r31)
/* 803C28AC  90 9F 04 1C */	stw r4, 0x41c(r31)
/* 803C28B0  90 9F 04 20 */	stw r4, 0x420(r31)
/* 803C28B4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 803C28B8  28 03 00 00 */	cmplwi r3, 0
/* 803C28BC  41 82 00 AC */	beq lbl_803C2968
/* 803C28C0  48 00 F7 1D */	bl mNpc_GetNpcSex
/* 803C28C4  2C 03 00 01 */	cmpwi r3, 1
/* 803C28C8  41 82 00 44 */	beq lbl_803C290C
/* 803C28CC  40 80 00 74 */	bge lbl_803C2940
/* 803C28D0  2C 03 00 00 */	cmpwi r3, 0
/* 803C28D4  40 80 00 08 */	bge lbl_803C28DC
/* 803C28D8  48 00 00 68 */	b lbl_803C2940
lbl_803C28DC:
/* 803C28DC  38 00 00 46 */	li r0, 0x46
/* 803C28E0  38 A0 00 F5 */	li r5, 0xf5
/* 803C28E4  98 1F 02 B4 */	stb r0, 0x2b4(r31)
/* 803C28E8  38 80 00 FF */	li r4, 0xff
/* 803C28EC  38 60 00 00 */	li r3, 0
/* 803C28F0  38 00 00 0F */	li r0, 0xf
/* 803C28F4  98 BF 02 B5 */	stb r5, 0x2b5(r31)
/* 803C28F8  98 9F 02 B6 */	stb r4, 0x2b6(r31)
/* 803C28FC  98 7F 02 B0 */	stb r3, 0x2b0(r31)
/* 803C2900  98 7F 02 B1 */	stb r3, 0x2b1(r31)
/* 803C2904  98 1F 02 B2 */	stb r0, 0x2b2(r31)
/* 803C2908  48 00 00 60 */	b lbl_803C2968
lbl_803C290C:
/* 803C290C  38 60 00 EB */	li r3, 0xeb
/* 803C2910  38 00 00 8C */	li r0, 0x8c
/* 803C2914  98 7F 02 B4 */	stb r3, 0x2b4(r31)
/* 803C2918  38 A0 00 D2 */	li r5, 0xd2
/* 803C291C  38 80 00 2D */	li r4, 0x2d
/* 803C2920  38 60 00 00 */	li r3, 0
/* 803C2924  98 1F 02 B5 */	stb r0, 0x2b5(r31)
/* 803C2928  38 00 00 1E */	li r0, 0x1e
/* 803C292C  98 BF 02 B6 */	stb r5, 0x2b6(r31)
/* 803C2930  98 9F 02 B0 */	stb r4, 0x2b0(r31)
/* 803C2934  98 7F 02 B1 */	stb r3, 0x2b1(r31)
/* 803C2938  98 1F 02 B2 */	stb r0, 0x2b2(r31)
/* 803C293C  48 00 00 2C */	b lbl_803C2968
lbl_803C2940:
/* 803C2940  38 00 00 B9 */	li r0, 0xb9
/* 803C2944  38 80 00 FF */	li r4, 0xff
/* 803C2948  98 1F 02 B4 */	stb r0, 0x2b4(r31)
/* 803C294C  38 60 00 00 */	li r3, 0
/* 803C2950  38 00 00 1E */	li r0, 0x1e
/* 803C2954  98 9F 02 B5 */	stb r4, 0x2b5(r31)
/* 803C2958  98 7F 02 B6 */	stb r3, 0x2b6(r31)
/* 803C295C  98 7F 02 B0 */	stb r3, 0x2b0(r31)
/* 803C2960  98 1F 02 B1 */	stb r0, 0x2b1(r31)
/* 803C2964  98 7F 02 B2 */	stb r3, 0x2b2(r31)
lbl_803C2968:
/* 803C2968  38 00 00 01 */	li r0, 1
/* 803C296C  90 1F 00 00 */	stw r0, 0(r31)
/* 803C2970  4B C8 85 E1 */	bl emu64_refresh
/* 803C2974  48 00 00 0C */	b lbl_803C2980
lbl_803C2978:
/* 803C2978  38 00 00 00 */	li r0, 0
/* 803C297C  90 1F 00 00 */	stw r0, 0(r31)
lbl_803C2980:
/* 803C2980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2988  7C 08 03 A6 */	mtlr r0
/* 803C298C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2990  4E 80 00 20 */	blr 

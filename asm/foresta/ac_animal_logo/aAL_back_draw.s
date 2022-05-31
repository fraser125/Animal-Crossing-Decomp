lbl_8041111C:
/* 8041111C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80411120  7C 08 02 A6 */	mflr r0
/* 80411124  90 01 00 24 */	stw r0, 0x24(r1)
/* 80411128  39 61 00 20 */	addi r11, r1, 0x20
/* 8041112C  4B C8 9D A9 */	bl func_8009AED4
/* 80411130  7C 7E 1B 78 */	mr r30, r3
/* 80411134  7C 9D 23 78 */	mr r29, r4
/* 80411138  4B FF B0 9D */	bl Matrix_push
/* 8041113C  3C 60 80 64 */	lis r3, lit_548@ha /* 0x80643844@ha */
/* 80411140  3C 80 80 64 */	lis r4, lit_669@ha /* 0x806438E4@ha */
/* 80411144  38 A3 38 44 */	addi r5, r3, lit_548@l /* 0x80643844@l */
/* 80411148  C0 44 38 E4 */	lfs f2, lit_669@l(r4)  /* 0x806438E4@l */
/* 8041114C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80411150  38 60 00 01 */	li r3, 1
/* 80411154  FC 60 08 90 */	fmr f3, f1
/* 80411158  4B FF B1 A9 */	bl Matrix_translate
/* 8041115C  3C 80 80 64 */	lis r4, lit_670@ha /* 0x806438E8@ha */
/* 80411160  38 60 00 01 */	li r3, 1
/* 80411164  C0 24 38 E8 */	lfs f1, lit_670@l(r4)  /* 0x806438E8@l */
/* 80411168  FC 40 08 90 */	fmr f2, f1
/* 8041116C  FC 60 08 90 */	fmr f3, f1
/* 80411170  4B FF B2 7D */	bl Matrix_scale
/* 80411174  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80411178  83 FE 02 F0 */	lwz r31, 0x2f0(r30)
/* 8041117C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80411180  7F C3 F3 78 */	mr r3, r30
/* 80411184  90 1F 00 00 */	stw r0, 0(r31)
/* 80411188  4B FF C2 4D */	bl _Matrix_to_Mtx_new
/* 8041118C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80411190  90 7F 00 04 */	stw r3, 4(r31)
/* 80411194  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 80411198  3C E0 80 64 */	lis r7, init_disp_650@ha /* 0x806438BC@ha */
/* 8041119C  90 1F 00 08 */	stw r0, 8(r31)
/* 804111A0  3C C0 80 C4 */	lis r6, logo_us_backA_model@ha /* 0x80C3B858@ha */
/* 804111A4  3C A0 80 C4 */	lis r5, logo_us_backB_model@ha /* 0x80C3B830@ha */
/* 804111A8  3C 80 80 C4 */	lis r4, logo_us_backC_model@ha /* 0x80C3B808@ha */
/* 804111AC  A8 1D 05 54 */	lha r0, 0x554(r29)
/* 804111B0  3C 60 80 C4 */	lis r3, logo_us_backD_model@ha /* 0x80C3B7E0@ha */
/* 804111B4  3D 00 DE 00 */	lis r8, 0xde00
/* 804111B8  38 E7 38 BC */	addi r7, r7, init_disp_650@l /* 0x806438BC@l */
/* 804111BC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804111C0  38 C6 B8 58 */	addi r6, r6, logo_us_backA_model@l /* 0x80C3B858@l */
/* 804111C4  64 00 50 3C */	oris r0, r0, 0x503c
/* 804111C8  38 A5 B8 30 */	addi r5, r5, logo_us_backB_model@l /* 0x80C3B830@l */
/* 804111CC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 804111D0  38 84 B8 08 */	addi r4, r4, logo_us_backC_model@l /* 0x80C3B808@l */
/* 804111D4  38 03 B7 E0 */	addi r0, r3, logo_us_backD_model@l /* 0x80C3B7E0@l */
/* 804111D8  91 1F 00 10 */	stw r8, 0x10(r31)
/* 804111DC  90 FF 00 14 */	stw r7, 0x14(r31)
/* 804111E0  91 1F 00 18 */	stw r8, 0x18(r31)
/* 804111E4  90 DF 00 1C */	stw r6, 0x1c(r31)
/* 804111E8  91 1F 00 20 */	stw r8, 0x20(r31)
/* 804111EC  90 BF 00 24 */	stw r5, 0x24(r31)
/* 804111F0  91 1F 00 28 */	stw r8, 0x28(r31)
/* 804111F4  90 9F 00 2C */	stw r4, 0x2c(r31)
/* 804111F8  3B FF 00 30 */	addi r31, r31, 0x30
/* 804111FC  7F E3 FB 78 */	mr r3, r31
/* 80411200  91 1F 00 00 */	stw r8, 0(r31)
/* 80411204  3B FF 00 08 */	addi r31, r31, 8
/* 80411208  90 03 00 04 */	stw r0, 4(r3)
/* 8041120C  93 FE 02 F0 */	stw r31, 0x2f0(r30)
/* 80411210  4B FF B0 05 */	bl Matrix_pull
/* 80411214  39 61 00 20 */	addi r11, r1, 0x20
/* 80411218  4B C8 9D 09 */	bl func_8009AF20
/* 8041121C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80411220  7C 08 03 A6 */	mtlr r0
/* 80411224  38 21 00 20 */	addi r1, r1, 0x20
/* 80411228  4E 80 00 20 */	blr 

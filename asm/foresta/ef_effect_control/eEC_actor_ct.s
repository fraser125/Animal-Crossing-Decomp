lbl_804CD83C:
/* 804CD83C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CD840  7C 08 02 A6 */	mflr r0
/* 804CD844  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CD848  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804CD84C  7C 9F 23 78 */	mr r31, r4
/* 804CD850  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804CD854  7C 7E 1B 78 */	mr r30, r3
/* 804CD858  4B FF FE 59 */	bl eEC_EffectLib2Clip
/* 804CD85C  4B FF FE 11 */	bl eEC_InitEffectControlWork
/* 804CD860  7F E3 FB 78 */	mr r3, r31
/* 804CD864  4B FF FF 31 */	bl eEC_MakeEffectLight
/* 804CD868  48 00 0D 19 */	bl eEL_InitEffectLight
/* 804CD86C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804CD870  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804CD874  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804CD878  2C 00 00 33 */	cmpwi r0, 0x33
/* 804CD87C  40 82 00 54 */	bne lbl_804CD8D0
/* 804CD880  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804CD884  3C 63 00 02 */	addis r3, r3, 2
/* 804CD888  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804CD88C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804CD890  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 804CD894  7F E7 FB 78 */	mr r7, r31
/* 804CD898  90 81 00 08 */	stw r4, 8(r1)
/* 804CD89C  38 81 00 08 */	addi r4, r1, 8
/* 804CD8A0  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804CD8A4  38 60 00 77 */	li r3, 0x77
/* 804CD8A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CD8AC  38 A0 00 03 */	li r5, 3
/* 804CD8B0  38 C0 00 00 */	li r6, 0
/* 804CD8B4  39 20 00 00 */	li r9, 0
/* 804CD8B8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804CD8BC  39 40 00 00 */	li r10, 0
/* 804CD8C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CD8C4  81 8B 00 00 */	lwz r12, 0(r11)
/* 804CD8C8  7D 89 03 A6 */	mtctr r12
/* 804CD8CC  4E 80 04 21 */	bctrl 
lbl_804CD8D0:
/* 804CD8D0  3C 60 81 1D */	lis r3, eMH_special_point_light_num@ha /* 0x811D2D04@ha */
/* 804CD8D4  38 00 FF FF */	li r0, -1
/* 804CD8D8  90 03 2D 04 */	stw r0, eMH_special_point_light_num@l(r3)  /* 0x811D2D04@l */
/* 804CD8DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CD8E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804CD8E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804CD8E8  7C 08 03 A6 */	mtlr r0
/* 804CD8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804CD8F0  4E 80 00 20 */	blr 

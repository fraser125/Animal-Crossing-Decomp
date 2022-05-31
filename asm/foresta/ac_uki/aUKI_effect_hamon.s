lbl_804ADE9C:
/* 804ADE9C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804ADEA0  7C 08 02 A6 */	mflr r0
/* 804ADEA4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804ADEA8  39 61 00 50 */	addi r11, r1, 0x50
/* 804ADEAC  4B BE D0 29 */	bl func_8009AED4
/* 804ADEB0  7C 7D 1B 78 */	mr r29, r3
/* 804ADEB4  3C 60 80 69 */	lis r3, lit_524@ha /* 0x8068F95C@ha */
/* 804ADEB8  81 1D 00 28 */	lwz r8, 0x28(r29)
/* 804ADEBC  7C BF 2B 78 */	mr r31, r5
/* 804ADEC0  80 FD 00 2C */	lwz r7, 0x2c(r29)
/* 804ADEC4  38 03 F9 5C */	addi r0, r3, lit_524@l /* 0x8068F95C@l */
/* 804ADEC8  80 DD 00 30 */	lwz r6, 0x30(r29)
/* 804ADECC  7C 9E 23 78 */	mr r30, r4
/* 804ADED0  91 01 00 08 */	stw r8, 8(r1)
/* 804ADED4  7C 04 03 78 */	mr r4, r0
/* 804ADED8  38 61 00 20 */	addi r3, r1, 0x20
/* 804ADEDC  38 A0 02 5B */	li r5, 0x25b
/* 804ADEE0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 804ADEE4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804ADEE8  91 01 00 2C */	stw r8, 0x2c(r1)
/* 804ADEEC  90 E1 00 30 */	stw r7, 0x30(r1)
/* 804ADEF0  90 C1 00 34 */	stw r6, 0x34(r1)
/* 804ADEF4  91 01 00 20 */	stw r8, 0x20(r1)
/* 804ADEF8  90 E1 00 24 */	stw r7, 0x24(r1)
/* 804ADEFC  90 C1 00 28 */	stw r6, 0x28(r1)
/* 804ADF00  4B EE 60 B9 */	bl mCoBG_GetWaterHeight_File
/* 804ADF04  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804ADF08  7F A3 EB 78 */	mr r3, r29
/* 804ADF0C  4B FF FE 75 */	bl aUKI_Get_flow_angle
/* 804ADF10  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804ADF14  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 804ADF18  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804ADF1C  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804ADF20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804ADF24  3C 84 00 02 */	addis r4, r4, 2
/* 804ADF28  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804ADF2C  7C 66 1B 78 */	mr r6, r3
/* 804ADF30  81 64 60 9C */	lwz r11, 0x609c(r4)
/* 804ADF34  7F C7 F3 78 */	mr r7, r30
/* 804ADF38  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804ADF3C  7F E9 FB 78 */	mr r9, r31
/* 804ADF40  38 81 00 14 */	addi r4, r1, 0x14
/* 804ADF44  38 60 00 45 */	li r3, 0x45
/* 804ADF48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804ADF4C  38 A0 00 01 */	li r5, 1
/* 804ADF50  39 00 00 00 */	li r8, 0
/* 804ADF54  39 40 00 00 */	li r10, 0
/* 804ADF58  81 8B 00 00 */	lwz r12, 0(r11)
/* 804ADF5C  7D 89 03 A6 */	mtctr r12
/* 804ADF60  4E 80 04 21 */	bctrl 
/* 804ADF64  39 61 00 50 */	addi r11, r1, 0x50
/* 804ADF68  4B BE CF B9 */	bl func_8009AF20
/* 804ADF6C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804ADF70  7C 08 03 A6 */	mtlr r0
/* 804ADF74  38 21 00 50 */	addi r1, r1, 0x50
/* 804ADF78  4E 80 00 20 */	blr 

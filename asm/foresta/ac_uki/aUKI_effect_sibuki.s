lbl_804ADDBC:
/* 804ADDBC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804ADDC0  7C 08 02 A6 */	mflr r0
/* 804ADDC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804ADDC8  39 61 00 50 */	addi r11, r1, 0x50
/* 804ADDCC  4B BE D1 09 */	bl func_8009AED4
/* 804ADDD0  7C 7D 1B 78 */	mr r29, r3
/* 804ADDD4  3C 60 80 69 */	lis r3, lit_524@ha /* 0x8068F95C@ha */
/* 804ADDD8  81 1D 00 28 */	lwz r8, 0x28(r29)
/* 804ADDDC  7C BF 2B 78 */	mr r31, r5
/* 804ADDE0  80 FD 00 2C */	lwz r7, 0x2c(r29)
/* 804ADDE4  38 03 F9 5C */	addi r0, r3, lit_524@l /* 0x8068F95C@l */
/* 804ADDE8  80 DD 00 30 */	lwz r6, 0x30(r29)
/* 804ADDEC  7C 9E 23 78 */	mr r30, r4
/* 804ADDF0  91 01 00 08 */	stw r8, 8(r1)
/* 804ADDF4  7C 04 03 78 */	mr r4, r0
/* 804ADDF8  38 61 00 20 */	addi r3, r1, 0x20
/* 804ADDFC  38 A0 02 3F */	li r5, 0x23f
/* 804ADE00  90 E1 00 0C */	stw r7, 0xc(r1)
/* 804ADE04  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804ADE08  91 01 00 2C */	stw r8, 0x2c(r1)
/* 804ADE0C  90 E1 00 30 */	stw r7, 0x30(r1)
/* 804ADE10  90 C1 00 34 */	stw r6, 0x34(r1)
/* 804ADE14  91 01 00 20 */	stw r8, 0x20(r1)
/* 804ADE18  90 E1 00 24 */	stw r7, 0x24(r1)
/* 804ADE1C  90 C1 00 28 */	stw r6, 0x28(r1)
/* 804ADE20  4B EE 61 99 */	bl mCoBG_GetWaterHeight_File
/* 804ADE24  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804ADE28  7F A3 EB 78 */	mr r3, r29
/* 804ADE2C  4B FF FF 55 */	bl aUKI_Get_flow_angle
/* 804ADE30  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804ADE34  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 804ADE38  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804ADE3C  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804ADE40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804ADE44  3C 84 00 02 */	addis r4, r4, 2
/* 804ADE48  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804ADE4C  7C 66 1B 78 */	mr r6, r3
/* 804ADE50  81 64 60 9C */	lwz r11, 0x609c(r4)
/* 804ADE54  7F C7 F3 78 */	mr r7, r30
/* 804ADE58  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804ADE5C  7F E9 FB 78 */	mr r9, r31
/* 804ADE60  38 81 00 14 */	addi r4, r1, 0x14
/* 804ADE64  38 60 00 46 */	li r3, 0x46
/* 804ADE68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804ADE6C  38 A0 00 01 */	li r5, 1
/* 804ADE70  39 00 00 00 */	li r8, 0
/* 804ADE74  39 40 00 00 */	li r10, 0
/* 804ADE78  81 8B 00 00 */	lwz r12, 0(r11)
/* 804ADE7C  7D 89 03 A6 */	mtctr r12
/* 804ADE80  4E 80 04 21 */	bctrl 
/* 804ADE84  39 61 00 50 */	addi r11, r1, 0x50
/* 804ADE88  4B BE D0 99 */	bl func_8009AF20
/* 804ADE8C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804ADE90  7C 08 03 A6 */	mtlr r0
/* 804ADE94  38 21 00 50 */	addi r1, r1, 0x50
/* 804ADE98  4E 80 00 20 */	blr 

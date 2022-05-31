lbl_804119F8:
/* 804119F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804119FC  7C 08 02 A6 */	mflr r0
/* 80411A00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80411A04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80411A08  7C 9F 23 78 */	mr r31, r4
/* 80411A0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80411A10  7C 7E 1B 78 */	mr r30, r3
/* 80411A14  38 61 00 08 */	addi r3, r1, 8
/* 80411A18  4B FB E6 1D */	bl mNpc_RenewalNpcRoom
/* 80411A1C  A8 01 00 08 */	lha r0, 8(r1)
/* 80411A20  7F C3 F3 78 */	mr r3, r30
/* 80411A24  38 80 00 01 */	li r4, 1
/* 80411A28  B0 1E 00 24 */	sth r0, 0x24(r30)
/* 80411A2C  4B FF FF 85 */	bl aAR_SetClip
/* 80411A30  A8 61 00 08 */	lha r3, 8(r1)
/* 80411A34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80411A38  54 63 C6 3E */	rlwinm r3, r3, 0x18, 0x18, 0x1f
/* 80411A3C  7C 64 07 34 */	extsh r4, r3
/* 80411A40  7C 05 03 78 */	mr r5, r0
/* 80411A44  40 80 00 0C */	bge lbl_80411A50
/* 80411A48  38 A0 00 00 */	li r5, 0
/* 80411A4C  48 00 00 14 */	b lbl_80411A60
lbl_80411A50:
/* 80411A50  7C 00 07 34 */	extsh r0, r0
/* 80411A54  2C 00 00 42 */	cmpwi r0, 0x42
/* 80411A58  40 81 00 08 */	ble lbl_80411A60
/* 80411A5C  38 A0 00 42 */	li r5, 0x42
lbl_80411A60:
/* 80411A60  7C 80 07 35 */	extsh. r0, r4
/* 80411A64  40 80 00 0C */	bge lbl_80411A70
/* 80411A68  38 80 00 00 */	li r4, 0
/* 80411A6C  48 00 00 10 */	b lbl_80411A7C
lbl_80411A70:
/* 80411A70  2C 04 00 42 */	cmpwi r4, 0x42
/* 80411A74  40 81 00 08 */	ble lbl_80411A7C
/* 80411A78  38 80 00 42 */	li r4, 0x42
lbl_80411A7C:
/* 80411A7C  38 E0 00 00 */	li r7, 0
/* 80411A80  7C 86 07 34 */	extsh r6, r4
/* 80411A84  90 FE 01 74 */	stw r7, 0x174(r30)
/* 80411A88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80411A8C  7C A0 07 34 */	extsh r0, r5
/* 80411A90  38 80 10 20 */	li r4, 0x1020
/* 80411A94  90 FE 01 78 */	stw r7, 0x178(r30)
/* 80411A98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80411A9C  3C A3 00 03 */	addis r5, r3, 3
/* 80411AA0  90 DE 01 7C */	stw r6, 0x17c(r30)
/* 80411AA4  7F E3 FB 78 */	mr r3, r31
/* 80411AA8  90 FE 01 80 */	stw r7, 0x180(r30)
/* 80411AAC  90 1E 01 84 */	stw r0, 0x184(r30)
/* 80411AB0  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 80411AB4  98 05 85 91 */	stb r0, -0x7a6f(r5)
/* 80411AB8  4B FF FE D1 */	bl func_80411988
/* 80411ABC  28 03 00 00 */	cmplwi r3, 0
/* 80411AC0  90 7E 01 78 */	stw r3, 0x178(r30)
/* 80411AC4  41 82 00 10 */	beq lbl_80411AD4
/* 80411AC8  80 7E 01 78 */	lwz r3, 0x178(r30)
/* 80411ACC  80 9E 01 7C */	lwz r4, 0x17c(r30)
/* 80411AD0  4B FD 50 21 */	bl mRmTp_CopyWallData
lbl_80411AD4:
/* 80411AD4  7F E3 FB 78 */	mr r3, r31
/* 80411AD8  38 80 20 20 */	li r4, 0x2020
/* 80411ADC  4B FF FE AD */	bl func_80411988
/* 80411AE0  28 03 00 00 */	cmplwi r3, 0
/* 80411AE4  90 7E 01 80 */	stw r3, 0x180(r30)
/* 80411AE8  41 82 00 10 */	beq lbl_80411AF8
/* 80411AEC  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 80411AF0  80 9E 01 84 */	lwz r4, 0x184(r30)
/* 80411AF4  4B FD 51 65 */	bl mRmTp_CopyFloorData
lbl_80411AF8:
/* 80411AF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80411AFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80411B00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80411B04  7C 08 03 A6 */	mtlr r0
/* 80411B08  38 21 00 20 */	addi r1, r1, 0x20
/* 80411B0C  4E 80 00 20 */	blr 

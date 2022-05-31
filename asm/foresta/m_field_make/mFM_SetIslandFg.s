lbl_803A4194:
/* 803A4194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A4198  7C 08 02 A6 */	mflr r0
/* 803A419C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A41A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A41A4  4B CF 6D 25 */	bl func_8009AEC8
/* 803A41A8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803A41AC  7C 7C 1B 78 */	mr r28, r3
/* 803A41B0  7C 9D 23 78 */	mr r29, r4
/* 803A41B4  7C BE 2B 78 */	mr r30, r5
/* 803A41B8  3B 46 85 38 */	addi r26, r6, common_data@l /* 0x81138538@l */
/* 803A41BC  3B E0 00 00 */	li r31, 0
/* 803A41C0  3B 60 00 00 */	li r27, 0
lbl_803A41C4:
/* 803A41C4  80 1E 00 00 */	lwz r0, 0(r30)
/* 803A41C8  54 00 08 3C */	slwi r0, r0, 1
/* 803A41CC  7C 7A 02 14 */	add r3, r26, r0
/* 803A41D0  3C 63 00 01 */	addis r3, r3, 1
/* 803A41D4  A0 03 74 18 */	lhz r0, 0x7418(r3)
/* 803A41D8  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 803A41DC  1C 60 00 06 */	mulli r3, r0, 6
/* 803A41E0  38 03 00 02 */	addi r0, r3, 2
/* 803A41E4  7C 7C 02 2E */	lhzx r3, r28, r0
/* 803A41E8  54 60 10 3A */	slwi r0, r3, 2
/* 803A41EC  7C 9D 00 2E */	lwzx r4, r29, r0
/* 803A41F0  28 04 00 00 */	cmplwi r4, 0
/* 803A41F4  41 82 00 44 */	beq lbl_803A4238
/* 803A41F8  2C 03 00 00 */	cmpwi r3, 0
/* 803A41FC  41 80 00 28 */	blt lbl_803A4224
/* 803A4200  2C 03 01 A0 */	cmpwi r3, 0x1a0
/* 803A4204  40 80 00 20 */	bge lbl_803A4224
/* 803A4208  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A420C  38 84 00 02 */	addi r4, r4, 2
/* 803A4210  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803A4214  7C 60 DA 14 */	add r3, r0, r27
/* 803A4218  3C 63 00 02 */	addis r3, r3, 2
/* 803A421C  38 63 25 54 */	addi r3, r3, 0x2554
/* 803A4220  4B FF E0 95 */	bl mFM_FgUtDataSet
lbl_803A4224:
/* 803A4224  3B FF 00 01 */	addi r31, r31, 1
/* 803A4228  3B 7B 02 00 */	addi r27, r27, 0x200
/* 803A422C  2C 1F 00 02 */	cmpwi r31, 2
/* 803A4230  3B DE 00 04 */	addi r30, r30, 4
/* 803A4234  41 80 FF 90 */	blt lbl_803A41C4
lbl_803A4238:
/* 803A4238  39 61 00 20 */	addi r11, r1, 0x20
/* 803A423C  4B CF 6C D9 */	bl func_8009AF14
/* 803A4240  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A4244  7C 08 03 A6 */	mtlr r0
/* 803A4248  38 21 00 20 */	addi r1, r1, 0x20
/* 803A424C  4E 80 00 20 */	blr 

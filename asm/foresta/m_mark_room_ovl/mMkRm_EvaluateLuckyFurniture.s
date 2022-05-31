lbl_804D2B8C:
/* 804D2B8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D2B90  7C 08 02 A6 */	mflr r0
/* 804D2B94  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D2B98  39 61 00 40 */	addi r11, r1, 0x40
/* 804D2B9C  4B BC 83 19 */	bl func_8009AEB4
/* 804D2BA0  7C 78 1B 78 */	mr r24, r3
/* 804D2BA4  7C 99 23 78 */	mr r25, r4
/* 804D2BA8  7C BA 2B 78 */	mr r26, r5
/* 804D2BAC  3B C0 00 00 */	li r30, 0
/* 804D2BB0  3B E0 00 00 */	li r31, 0
/* 804D2BB4  3A E0 00 00 */	li r23, 0
lbl_804D2BB8:
/* 804D2BB8  7F 79 B8 2E */	lwzx r27, r25, r23
/* 804D2BBC  28 1B 00 00 */	cmplwi r27, 0
/* 804D2BC0  41 82 00 78 */	beq lbl_804D2C38
/* 804D2BC4  3C 60 80 6A */	lis r3, mMkRm_ftr_info@ha /* 0x8069CEFC@ha */
/* 804D2BC8  3B 80 00 01 */	li r28, 1
/* 804D2BCC  3A A3 CE FC */	addi r21, r3, mMkRm_ftr_info@l /* 0x8069CEFC@l */
/* 804D2BD0  3A C0 00 10 */	li r22, 0x10
/* 804D2BD4  48 00 00 5C */	b lbl_804D2C30
lbl_804D2BD8:
/* 804D2BD8  3B A0 00 01 */	li r29, 1
/* 804D2BDC  48 00 00 44 */	b lbl_804D2C20
lbl_804D2BE0:
/* 804D2BE0  7C 1D B2 14 */	add r0, r29, r22
/* 804D2BE4  54 00 08 3C */	slwi r0, r0, 1
/* 804D2BE8  7C 7B 02 2E */	lhzx r3, r27, r0
/* 804D2BEC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804D2BF0  2C 00 00 01 */	cmpwi r0, 1
/* 804D2BF4  41 82 00 0C */	beq lbl_804D2C00
/* 804D2BF8  2C 00 00 03 */	cmpwi r0, 3
/* 804D2BFC  40 82 00 20 */	bne lbl_804D2C1C
lbl_804D2C00:
/* 804D2C00  4B F1 4B 91 */	bl mRmTp_FtrItemNo2FtrIdx
/* 804D2C04  54 60 10 3A */	slwi r0, r3, 2
/* 804D2C08  7C 75 02 14 */	add r3, r21, r0
/* 804D2C0C  88 03 00 02 */	lbz r0, 2(r3)
/* 804D2C10  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 804D2C14  41 82 00 08 */	beq lbl_804D2C1C
/* 804D2C18  3B DE 00 01 */	addi r30, r30, 1
lbl_804D2C1C:
/* 804D2C1C  3B BD 00 01 */	addi r29, r29, 1
lbl_804D2C20:
/* 804D2C20  7C 1D D0 00 */	cmpw r29, r26
/* 804D2C24  41 80 FF BC */	blt lbl_804D2BE0
/* 804D2C28  3B 9C 00 01 */	addi r28, r28, 1
/* 804D2C2C  3A D6 00 10 */	addi r22, r22, 0x10
lbl_804D2C30:
/* 804D2C30  7C 1C D0 00 */	cmpw r28, r26
/* 804D2C34  41 80 FF A4 */	blt lbl_804D2BD8
lbl_804D2C38:
/* 804D2C38  3B FF 00 01 */	addi r31, r31, 1
/* 804D2C3C  3A F7 00 04 */	addi r23, r23, 4
/* 804D2C40  2C 1F 00 02 */	cmpwi r31, 2
/* 804D2C44  41 80 FF 74 */	blt lbl_804D2BB8
/* 804D2C48  1C 1E 03 09 */	mulli r0, r30, 0x309
/* 804D2C4C  80 78 00 00 */	lwz r3, 0(r24)
/* 804D2C50  7C 03 02 14 */	add r0, r3, r0
/* 804D2C54  90 18 00 00 */	stw r0, 0(r24)
/* 804D2C58  39 61 00 40 */	addi r11, r1, 0x40
/* 804D2C5C  4B BC 82 A5 */	bl func_8009AF00
/* 804D2C60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D2C64  7C 08 03 A6 */	mtlr r0
/* 804D2C68  38 21 00 40 */	addi r1, r1, 0x40
/* 804D2C6C  4E 80 00 20 */	blr 

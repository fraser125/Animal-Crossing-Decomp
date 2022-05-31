lbl_8038D780:
/* 8038D780  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038D784  7C 08 02 A6 */	mflr r0
/* 8038D788  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038D78C  39 61 00 30 */	addi r11, r1, 0x30
/* 8038D790  4B D0 D7 31 */	bl func_8009AEC0
/* 8038D794  7C 99 23 78 */	mr r25, r4
/* 8038D798  7C 78 1B 78 */	mr r24, r3
/* 8038D79C  83 C4 01 00 */	lwz r30, 0x100(r4)
/* 8038D7A0  7C BA 2B 78 */	mr r26, r5
/* 8038D7A4  7C DB 33 78 */	mr r27, r6
/* 8038D7A8  3B 80 00 00 */	li r28, 0
/* 8038D7AC  2C 1E 00 00 */	cmpwi r30, 0
/* 8038D7B0  41 82 00 6C */	beq lbl_8038D81C
/* 8038D7B4  3B A0 00 00 */	li r29, 0
/* 8038D7B8  3B E0 00 00 */	li r31, 0
lbl_8038D7BC:
/* 8038D7BC  7C 79 F8 2E */	lwzx r3, r25, r31
/* 8038D7C0  28 03 00 00 */	cmplwi r3, 0
/* 8038D7C4  41 82 00 48 */	beq lbl_8038D80C
/* 8038D7C8  80 63 00 00 */	lwz r3, 0(r3)
/* 8038D7CC  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8038D7D0  C0 5A 00 08 */	lfs f2, 8(r26)
/* 8038D7D4  C0 63 00 00 */	lfs f3, 0(r3)
/* 8038D7D8  C0 83 00 08 */	lfs f4, 8(r3)
/* 8038D7DC  48 07 B5 89 */	bl Math3DLength2D
/* 8038D7E0  7C 79 F8 2E */	lwzx r3, r25, r31
/* 8038D7E4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8038D7E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038D7EC  40 80 00 20 */	bge lbl_8038D80C
/* 8038D7F0  7F 04 C3 78 */	mr r4, r24
/* 8038D7F4  7F 65 DB 78 */	mr r5, r27
/* 8038D7F8  7F A6 EB 78 */	mr r6, r29
/* 8038D7FC  4B FF FA D1 */	bl mCoBG_SizeData2CollisionData
/* 8038D800  3B 9C 00 01 */	addi r28, r28, 1
/* 8038D804  7C 1C F0 00 */	cmpw r28, r30
/* 8038D808  40 80 00 14 */	bge lbl_8038D81C
lbl_8038D80C:
/* 8038D80C  3B BD 00 01 */	addi r29, r29, 1
/* 8038D810  3B FF 00 04 */	addi r31, r31, 4
/* 8038D814  2C 1D 00 40 */	cmpwi r29, 0x40
/* 8038D818  41 80 FF A4 */	blt lbl_8038D7BC
lbl_8038D81C:
/* 8038D81C  39 61 00 30 */	addi r11, r1, 0x30
/* 8038D820  4B D0 D6 ED */	bl func_8009AF0C
/* 8038D824  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038D828  7C 08 03 A6 */	mtlr r0
/* 8038D82C  38 21 00 30 */	addi r1, r1, 0x30
/* 8038D830  4E 80 00 20 */	blr 

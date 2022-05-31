lbl_8047A9B8:
/* 8047A9B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047A9BC  7C 08 02 A6 */	mflr r0
/* 8047A9C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047A9C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8047A9C8  4B C2 04 F5 */	bl func_8009AEBC
/* 8047A9CC  3D 60 81 14 */	lis r11, common_data@ha /* 0x81138538@ha */
/* 8047A9D0  7C 9B 23 78 */	mr r27, r4
/* 8047A9D4  39 6B 85 38 */	addi r11, r11, common_data@l /* 0x81138538@l */
/* 8047A9D8  7C BC 2B 78 */	mr r28, r5
/* 8047A9DC  3C 8B 00 02 */	addis r4, r11, 2
/* 8047A9E0  7C DD 33 78 */	mr r29, r6
/* 8047A9E4  80 84 60 8C */	lwz r4, 0x608c(r4)
/* 8047A9E8  7C FE 3B 78 */	mr r30, r7
/* 8047A9EC  7D 1F 43 78 */	mr r31, r8
/* 8047A9F0  7D 37 4B 78 */	mr r23, r9
/* 8047A9F4  83 24 00 00 */	lwz r25, 0(r4)
/* 8047A9F8  7D 58 53 78 */	mr r24, r10
/* 8047A9FC  28 19 00 00 */	cmplwi r25, 0
/* 8047AA00  41 82 00 9C */	beq lbl_8047AA9C
/* 8047AA04  38 00 00 03 */	li r0, 3
/* 8047AA08  3B 40 00 00 */	li r26, 0
/* 8047AA0C  7C 09 03 A6 */	mtctr r0
lbl_8047AA10:
/* 8047AA10  38 1A 03 8C */	addi r0, r26, 0x38c
/* 8047AA14  7C 19 00 AE */	lbzx r0, r25, r0
/* 8047AA18  28 00 00 00 */	cmplwi r0, 0
/* 8047AA1C  40 82 00 78 */	bne lbl_8047AA94
/* 8047AA20  4B F5 EC 21 */	bl get_player_actor_withoutCheck
/* 8047AA24  7C 99 D2 14 */	add r4, r25, r26
/* 8047AA28  38 00 00 01 */	li r0, 1
/* 8047AA2C  98 04 03 8C */	stb r0, 0x38c(r4)
/* 8047AA30  38 00 00 2E */	li r0, 0x2e
/* 8047AA34  28 03 00 00 */	cmplwi r3, 0
/* 8047AA38  B3 64 03 8E */	sth r27, 0x38e(r4)
/* 8047AA3C  92 E4 03 90 */	stw r23, 0x390(r4)
/* 8047AA40  B3 E4 03 94 */	sth r31, 0x394(r4)
/* 8047AA44  93 84 03 98 */	stw r28, 0x398(r4)
/* 8047AA48  B3 04 03 9C */	sth r24, 0x39c(r4)
/* 8047AA4C  B0 04 03 9E */	sth r0, 0x39e(r4)
/* 8047AA50  B0 04 03 A0 */	sth r0, 0x3a0(r4)
/* 8047AA54  93 A4 03 A4 */	stw r29, 0x3a4(r4)
/* 8047AA58  93 C4 03 A8 */	stw r30, 0x3a8(r4)
/* 8047AA5C  41 82 00 30 */	beq lbl_8047AA8C
/* 8047AA60  3C 80 80 64 */	lis r4, lit_3986@ha /* 0x80644A8C@ha */
/* 8047AA64  3C A0 80 64 */	lis r5, lit_886@ha /* 0x806449F8@ha */
/* 8047AA68  38 C4 4A 8C */	addi r6, r4, lit_3986@l /* 0x80644A8C@l */
/* 8047AA6C  C0 45 49 F8 */	lfs f2, lit_886@l(r5)  /* 0x806449F8@l */
/* 8047AA70  C0 26 00 00 */	lfs f1, 0(r6)
/* 8047AA74  7C 64 1B 78 */	mr r4, r3
/* 8047AA78  38 60 00 00 */	li r3, 0
/* 8047AA7C  38 A0 00 00 */	li r5, 0
/* 8047AA80  38 C0 00 00 */	li r6, 0
/* 8047AA84  38 E0 00 01 */	li r7, 1
/* 8047AA88  4B F0 F3 19 */	bl mCoBG_BgCheckControll
lbl_8047AA8C:
/* 8047AA8C  38 60 00 01 */	li r3, 1
/* 8047AA90  48 00 00 10 */	b lbl_8047AAA0
lbl_8047AA94:
/* 8047AA94  3B 5A 00 20 */	addi r26, r26, 0x20
/* 8047AA98  42 00 FF 78 */	bdnz lbl_8047AA10
lbl_8047AA9C:
/* 8047AA9C  38 60 00 00 */	li r3, 0
lbl_8047AAA0:
/* 8047AAA0  39 61 00 30 */	addi r11, r1, 0x30
/* 8047AAA4  4B C2 04 65 */	bl func_8009AF08
/* 8047AAA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047AAAC  7C 08 03 A6 */	mtlr r0
/* 8047AAB0  38 21 00 30 */	addi r1, r1, 0x30
/* 8047AAB4  4E 80 00 20 */	blr 

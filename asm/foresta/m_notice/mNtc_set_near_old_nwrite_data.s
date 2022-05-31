lbl_803CA754:
/* 803CA754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CA758  7C 08 02 A6 */	mflr r0
/* 803CA75C  3C E0 81 17 */	lis r7, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803CA760  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CA764  39 07 B2 B8 */	addi r8, r7, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803CA768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CA76C  7C BF 2B 78 */	mr r31, r5
/* 803CA770  88 03 00 05 */	lbz r0, 5(r3)
/* 803CA774  88 C3 00 03 */	lbz r6, 3(r3)
/* 803CA778  54 07 40 2E */	slwi r7, r0, 8
/* 803CA77C  38 00 00 2B */	li r0, 0x2b
/* 803CA780  7C C7 32 14 */	add r6, r7, r6
/* 803CA784  38 E8 00 A8 */	addi r7, r8, 0xa8
/* 803CA788  39 00 00 2A */	li r8, 0x2a
/* 803CA78C  7C C5 07 34 */	extsh r5, r6
/* 803CA790  7C 09 03 A6 */	mtctr r0
lbl_803CA794:
/* 803CA794  A0 07 00 02 */	lhz r0, 2(r7)
/* 803CA798  7C 05 00 00 */	cmpw r5, r0
/* 803CA79C  41 81 00 20 */	bgt lbl_803CA7BC
/* 803CA7A0  40 82 00 10 */	bne lbl_803CA7B0
/* 803CA7A4  88 03 00 02 */	lbz r0, 2(r3)
/* 803CA7A8  28 00 00 06 */	cmplwi r0, 6
/* 803CA7AC  40 80 00 10 */	bge lbl_803CA7BC
lbl_803CA7B0:
/* 803CA7B0  38 E7 FF FC */	addi r7, r7, -4
/* 803CA7B4  39 08 FF FF */	addi r8, r8, -1
/* 803CA7B8  42 00 FF DC */	bdnz lbl_803CA794
lbl_803CA7BC:
/* 803CA7BC  2C 08 FF FF */	cmpwi r8, -1
/* 803CA7C0  41 82 00 14 */	beq lbl_803CA7D4
/* 803CA7C4  A0 03 00 06 */	lhz r0, 6(r3)
/* 803CA7C8  B0 04 00 00 */	sth r0, 0(r4)
/* 803CA7CC  99 1F 00 00 */	stb r8, 0(r31)
/* 803CA7D0  48 00 00 18 */	b lbl_803CA7E8
lbl_803CA7D4:
/* 803CA7D4  A0 63 00 06 */	lhz r3, 6(r3)
/* 803CA7D8  38 03 FF FF */	addi r0, r3, -1
/* 803CA7DC  B0 04 00 00 */	sth r0, 0(r4)
/* 803CA7E0  4B FF F8 65 */	bl mNtc_get_auto_nwrite_data_last_idx
/* 803CA7E4  98 7F 00 00 */	stb r3, 0(r31)
lbl_803CA7E8:
/* 803CA7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CA7EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CA7F0  7C 08 03 A6 */	mtlr r0
/* 803CA7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803CA7F8  4E 80 00 20 */	blr 

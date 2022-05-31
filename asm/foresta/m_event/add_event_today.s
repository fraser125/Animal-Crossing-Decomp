lbl_8039B6D4:
/* 8039B6D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039B6D8  7C 08 02 A6 */	mflr r0
/* 8039B6DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039B6E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8039B6E4  4B CF F7 ED */	bl func_8009AED0
/* 8039B6E8  7C 9E 23 78 */	mr r30, r4
/* 8039B6EC  3C 80 81 16 */	lis r4, data_81167688@ha /* 0x81167688@ha */
/* 8039B6F0  3B 84 76 88 */	addi r28, r4, data_81167688@l /* 0x81167688@l */
/* 8039B6F4  A8 1E 00 0A */	lha r0, 0xa(r30)
/* 8039B6F8  38 9C 01 24 */	addi r4, r28, 0x124
/* 8039B6FC  7C 7D 1B 78 */	mr r29, r3
/* 8039B700  7C 04 00 AE */	lbzx r0, r4, r0
/* 8039B704  3B E0 00 00 */	li r31, 0
/* 8039B708  28 00 00 FF */	cmplwi r0, 0xff
/* 8039B70C  41 82 00 18 */	beq lbl_8039B724
/* 8039B710  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8039B714  38 9C 00 24 */	addi r4, r28, 0x24
/* 8039B718  7C 84 02 14 */	add r4, r4, r0
/* 8039B71C  3B E0 00 00 */	li r31, 0
/* 8039B720  48 00 00 3C */	b lbl_8039B75C
lbl_8039B724:
/* 8039B724  4B FF FF 7D */	bl search_empty_event_today
/* 8039B728  2C 03 00 10 */	cmpwi r3, 0x10
/* 8039B72C  41 80 00 0C */	blt lbl_8039B738
/* 8039B730  38 60 00 00 */	li r3, 0
/* 8039B734  48 00 00 FC */	b lbl_8039B830
lbl_8039B738:
/* 8039B738  80 9C 00 00 */	lwz r4, 0(r28)
/* 8039B73C  38 DC 01 24 */	addi r6, r28, 0x124
/* 8039B740  A8 FE 00 0A */	lha r7, 0xa(r30)
/* 8039B744  54 65 20 36 */	slwi r5, r3, 4
/* 8039B748  38 04 00 01 */	addi r0, r4, 1
/* 8039B74C  38 9C 00 24 */	addi r4, r28, 0x24
/* 8039B750  7C 66 39 AE */	stbx r3, r6, r7
/* 8039B754  7C 84 2A 14 */	add r4, r4, r5
/* 8039B758  90 1C 00 00 */	stw r0, 0(r28)
lbl_8039B75C:
/* 8039B75C  88 DE 00 03 */	lbz r6, 3(r30)
/* 8039B760  88 FE 00 07 */	lbz r7, 7(r30)
/* 8039B764  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 8039B768  41 82 00 18 */	beq lbl_8039B780
/* 8039B76C  B3 A4 00 08 */	sth r29, 8(r4)
/* 8039B770  54 C6 06 7E */	clrlwi r6, r6, 0x19
/* 8039B774  54 E7 06 7E */	clrlwi r7, r7, 0x19
/* 8039B778  B3 A4 00 0A */	sth r29, 0xa(r4)
/* 8039B77C  48 00 00 14 */	b lbl_8039B790
lbl_8039B780:
/* 8039B780  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8039B784  B0 04 00 08 */	sth r0, 8(r4)
/* 8039B788  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8039B78C  B0 04 00 0A */	sth r0, 0xa(r4)
lbl_8039B790:
/* 8039B790  54 C0 06 73 */	rlwinm. r0, r6, 0, 0x19, 0x19
/* 8039B794  41 82 00 3C */	beq lbl_8039B7D0
/* 8039B798  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8039B79C  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8039B7A0  54 C6 06 B0 */	rlwinm r6, r6, 0, 0x1a, 0x18
/* 8039B7A4  54 E5 06 B0 */	rlwinm r5, r7, 0, 0x1a, 0x18
/* 8039B7A8  7C 03 00 40 */	cmplw r3, r0
/* 8039B7AC  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 8039B7B0  54 A7 06 3E */	clrlwi r7, r5, 0x18
/* 8039B7B4  41 82 00 08 */	beq lbl_8039B7BC
/* 8039B7B8  38 C0 00 00 */	li r6, 0
lbl_8039B7BC:
/* 8039B7BC  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8039B7C0  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8039B7C4  7C 03 00 40 */	cmplw r3, r0
/* 8039B7C8  41 82 00 08 */	beq lbl_8039B7D0
/* 8039B7CC  38 E0 00 17 */	li r7, 0x17
lbl_8039B7D0:
/* 8039B7D0  54 C5 06 3E */	clrlwi r5, r6, 0x18
/* 8039B7D4  54 E3 06 3E */	clrlwi r3, r7, 0x18
/* 8039B7D8  38 C0 00 01 */	li r6, 1
/* 8039B7DC  38 E0 00 00 */	li r7, 0
/* 8039B7E0  48 00 00 2C */	b lbl_8039B80C
lbl_8039B7E4:
/* 8039B7E4  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 8039B7E8  7C 05 00 40 */	cmplw r5, r0
/* 8039B7EC  41 81 00 18 */	bgt lbl_8039B804
/* 8039B7F0  7C 00 18 40 */	cmplw r0, r3
/* 8039B7F4  41 81 00 10 */	bgt lbl_8039B804
/* 8039B7F8  80 04 00 04 */	lwz r0, 4(r4)
/* 8039B7FC  7C 00 33 78 */	or r0, r0, r6
/* 8039B800  90 04 00 04 */	stw r0, 4(r4)
lbl_8039B804:
/* 8039B804  54 C6 08 3C */	slwi r6, r6, 1
/* 8039B808  38 E7 00 01 */	addi r7, r7, 1
lbl_8039B80C:
/* 8039B80C  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 8039B810  28 00 00 18 */	cmplwi r0, 0x18
/* 8039B814  41 80 FF D0 */	blt lbl_8039B7E4
/* 8039B818  A8 1E 00 0A */	lha r0, 0xa(r30)
/* 8039B81C  7F E3 FB 78 */	mr r3, r31
/* 8039B820  90 04 00 00 */	stw r0, 0(r4)
/* 8039B824  A8 04 00 0C */	lha r0, 0xc(r4)
/* 8039B828  60 00 00 80 */	ori r0, r0, 0x80
/* 8039B82C  B0 04 00 0C */	sth r0, 0xc(r4)
lbl_8039B830:
/* 8039B830  39 61 00 20 */	addi r11, r1, 0x20
/* 8039B834  4B CF F6 E9 */	bl func_8009AF1C
/* 8039B838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039B83C  7C 08 03 A6 */	mtlr r0
/* 8039B840  38 21 00 20 */	addi r1, r1, 0x20
/* 8039B844  4E 80 00 20 */	blr 

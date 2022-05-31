lbl_8052B004:
/* 8052B004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B008  7C 08 02 A6 */	mflr r0
/* 8052B00C  38 80 00 07 */	li r4, 7
/* 8052B010  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B018  7C 7F 1B 78 */	mr r31, r3
/* 8052B01C  38 60 00 01 */	li r3, 1
/* 8052B020  4B E7 2D AD */	bl mEv_get_save_area
/* 8052B024  88 1F 09 A2 */	lbz r0, 0x9a2(r31)
/* 8052B028  38 A0 00 00 */	li r5, 0
/* 8052B02C  2C 00 00 0D */	cmpwi r0, 0xd
/* 8052B030  41 82 00 40 */	beq lbl_8052B070
/* 8052B034  40 80 00 10 */	bge lbl_8052B044
/* 8052B038  2C 00 00 03 */	cmpwi r0, 3
/* 8052B03C  41 82 00 14 */	beq lbl_8052B050
/* 8052B040  48 00 00 74 */	b lbl_8052B0B4
lbl_8052B044:
/* 8052B044  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8052B048  41 82 00 4C */	beq lbl_8052B094
/* 8052B04C  48 00 00 68 */	b lbl_8052B0B4
lbl_8052B050:
/* 8052B050  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8052B054  38 A0 00 01 */	li r5, 1
/* 8052B058  3C 84 FF FF */	addis r4, r4, 0xffff
/* 8052B05C  38 04 2F A8 */	addi r0, r4, 0x2fa8
/* 8052B060  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8052B064  7C A0 00 30 */	slw r0, r5, r0
/* 8052B068  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8052B06C  48 00 00 48 */	b lbl_8052B0B4
lbl_8052B070:
/* 8052B070  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8052B074  38 A0 00 04 */	li r5, 4
/* 8052B078  3C 84 FF FF */	addis r4, r4, 0xffff
/* 8052B07C  38 04 2F A8 */	addi r0, r4, 0x2fa8
/* 8052B080  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8052B084  68 00 00 01 */	xori r0, r0, 1
/* 8052B088  7C A0 00 30 */	slw r0, r5, r0
/* 8052B08C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8052B090  48 00 00 24 */	b lbl_8052B0B4
lbl_8052B094:
/* 8052B094  A0 9F 00 06 */	lhz r4, 6(r31)
/* 8052B098  38 A0 00 10 */	li r5, 0x10
/* 8052B09C  3C 84 FF FF */	addis r4, r4, 0xffff
/* 8052B0A0  38 04 2F A8 */	addi r0, r4, 0x2fa8
/* 8052B0A4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8052B0A8  68 00 00 01 */	xori r0, r0, 1
/* 8052B0AC  7C A0 00 30 */	slw r0, r5, r0
/* 8052B0B0  54 05 04 3E */	clrlwi r5, r0, 0x10
lbl_8052B0B4:
/* 8052B0B4  A0 83 00 04 */	lhz r4, 4(r3)
/* 8052B0B8  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 8052B0BC  7C 80 28 39 */	and. r0, r4, r5
/* 8052B0C0  41 82 00 14 */	beq lbl_8052B0D4
/* 8052B0C4  7C 80 28 78 */	andc r0, r4, r5
/* 8052B0C8  B0 03 00 04 */	sth r0, 4(r3)
/* 8052B0CC  38 60 00 01 */	li r3, 1
/* 8052B0D0  48 00 00 08 */	b lbl_8052B0D8
lbl_8052B0D4:
/* 8052B0D4  38 60 00 00 */	li r3, 0
lbl_8052B0D8:
/* 8052B0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B0E0  7C 08 03 A6 */	mtlr r0
/* 8052B0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B0E8  4E 80 00 20 */	blr 

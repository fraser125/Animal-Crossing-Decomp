lbl_805A3B90:
/* 805A3B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3B94  7C 08 02 A6 */	mflr r0
/* 805A3B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3BA0  7C 7F 1B 78 */	mr r31, r3
/* 805A3BA4  38 60 00 00 */	li r3, 0
/* 805A3BA8  A0 1F 00 98 */	lhz r0, 0x98(r31)
/* 805A3BAC  54 00 DE FF */	rlwinm. r0, r0, 0x1b, 0x1b, 0x1f
/* 805A3BB0  41 82 00 8C */	beq lbl_805A3C3C
/* 805A3BB4  88 1F 00 99 */	lbz r0, 0x99(r31)
/* 805A3BB8  54 00 F7 7F */	rlwinm. r0, r0, 0x1e, 0x1d, 0x1f
/* 805A3BBC  41 82 00 80 */	beq lbl_805A3C3C
/* 805A3BC0  38 80 00 00 */	li r4, 0
/* 805A3BC4  7C 09 03 A6 */	mtctr r0
/* 805A3BC8  40 81 00 74 */	ble lbl_805A3C3C
lbl_805A3BCC:
/* 805A3BCC  38 04 00 AA */	addi r0, r4, 0xaa
/* 805A3BD0  7C 1F 02 AE */	lhax r0, r31, r0
/* 805A3BD4  2C 00 00 00 */	cmpwi r0, 0
/* 805A3BD8  40 82 00 5C */	bne lbl_805A3C34
/* 805A3BDC  A8 BF 00 36 */	lha r5, 0x36(r31)
/* 805A3BE0  7C 7F 22 14 */	add r3, r31, r4
/* 805A3BE4  A8 03 00 A8 */	lha r0, 0xa8(r3)
/* 805A3BE8  3C 65 00 01 */	addis r3, r5, 1
/* 805A3BEC  38 63 80 00 */	addi r3, r3, -32768
/* 805A3BF0  7C 03 00 50 */	subf r0, r3, r0
/* 805A3BF4  7C 00 07 35 */	extsh. r0, r0
/* 805A3BF8  40 81 00 18 */	ble lbl_805A3C10
/* 805A3BFC  38 05 40 00 */	addi r0, r5, 0x4000
/* 805A3C00  7F E3 FB 78 */	mr r3, r31
/* 805A3C04  7C 04 07 34 */	extsh r4, r0
/* 805A3C08  4B FF F3 15 */	bl aGTT_set_angle
/* 805A3C0C  48 00 00 14 */	b lbl_805A3C20
lbl_805A3C10:
/* 805A3C10  38 05 C0 00 */	addi r0, r5, -16384
/* 805A3C14  7F E3 FB 78 */	mr r3, r31
/* 805A3C18  7C 04 07 34 */	extsh r4, r0
/* 805A3C1C  4B FF F3 01 */	bl aGTT_set_angle
lbl_805A3C20:
/* 805A3C20  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A3C24  38 60 00 01 */	li r3, 1
/* 805A3C28  60 00 00 40 */	ori r0, r0, 0x40
/* 805A3C2C  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A3C30  48 00 00 0C */	b lbl_805A3C3C
lbl_805A3C34:
/* 805A3C34  38 84 00 04 */	addi r4, r4, 4
/* 805A3C38  42 00 FF 94 */	bdnz lbl_805A3BCC
lbl_805A3C3C:
/* 805A3C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A3C44  7C 08 03 A6 */	mtlr r0
/* 805A3C48  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3C4C  4E 80 00 20 */	blr 

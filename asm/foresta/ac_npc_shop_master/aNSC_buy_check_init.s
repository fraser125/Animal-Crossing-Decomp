lbl_8057BDA8:
/* 8057BDA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057BDAC  7C 08 02 A6 */	mflr r0
/* 8057BDB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057BDB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8057BDB8  4B B1 F1 11 */	bl func_8009AEC8
/* 8057BDBC  AB A4 1F 66 */	lha r29, 0x1f66(r4)
/* 8057BDC0  7C 7B 1B 78 */	mr r27, r3
/* 8057BDC4  83 C4 1F 60 */	lwz r30, 0x1f60(r4)
/* 8057BDC8  3B E0 00 00 */	li r31, 0
/* 8057BDCC  2C 1D 00 01 */	cmpwi r29, 1
/* 8057BDD0  83 83 09 B0 */	lwz r28, 0x9b0(r3)
/* 8057BDD4  40 81 00 9C */	ble lbl_8057BE70
/* 8057BDD8  3B 80 00 01 */	li r28, 1
/* 8057BDDC  48 00 00 94 */	b lbl_8057BE70
lbl_8057BDE0:
/* 8057BDE0  A3 5E 00 00 */	lhz r26, 0(r30)
/* 8057BDE4  57 40 A7 3E */	rlwinm r0, r26, 0x14, 0x1c, 0x1f
/* 8057BDE8  2C 00 00 02 */	cmpwi r0, 2
/* 8057BDEC  40 82 00 40 */	bne lbl_8057BE2C
/* 8057BDF0  57 40 C7 3E */	rlwinm r0, r26, 0x18, 0x1c, 0x1f
/* 8057BDF4  2C 00 00 0F */	cmpwi r0, 0xf
/* 8057BDF8  40 82 00 34 */	bne lbl_8057BE2C
/* 8057BDFC  4B E3 A2 B5 */	bl Kabu_get_price
/* 8057BE00  3C 80 80 6C */	lis r4, kabu_sum@ha /* 0x806C0448@ha */
/* 8057BE04  57 45 10 3A */	slwi r5, r26, 2
/* 8057BE08  38 04 04 48 */	addi r0, r4, kabu_sum@l /* 0x806C0448@l */
/* 8057BE0C  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8057BE10  7C 60 2A 14 */	add r3, r0, r5
/* 8057BE14  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8057BE18  80 03 44 00 */	lwz r0, 0x4400(r3)
/* 8057BE1C  7C 00 21 D6 */	mullw r0, r0, r4
/* 8057BE20  7C 1C 01 D6 */	mullw r0, r28, r0
/* 8057BE24  7F FF 02 14 */	add r31, r31, r0
/* 8057BE28  48 00 00 40 */	b lbl_8057BE68
lbl_8057BE2C:
/* 8057BE2C  28 1A 20 00 */	cmplwi r26, 0x2000
/* 8057BE30  41 80 00 24 */	blt lbl_8057BE54
/* 8057BE34  28 1A 20 FF */	cmplwi r26, 0x20ff
/* 8057BE38  41 81 00 1C */	bgt lbl_8057BE54
/* 8057BE3C  7F 43 D3 78 */	mr r3, r26
/* 8057BE40  4B E6 C8 61 */	bl mSP_ItemNo2ItemPrice
/* 8057BE44  54 60 F0 BE */	srwi r0, r3, 2
/* 8057BE48  7C 1C 01 D6 */	mullw r0, r28, r0
/* 8057BE4C  7F FF 02 14 */	add r31, r31, r0
/* 8057BE50  48 00 00 18 */	b lbl_8057BE68
lbl_8057BE54:
/* 8057BE54  7F 43 D3 78 */	mr r3, r26
/* 8057BE58  4B E6 C8 49 */	bl mSP_ItemNo2ItemPrice
/* 8057BE5C  54 60 F0 BE */	srwi r0, r3, 2
/* 8057BE60  7C 1C 01 D6 */	mullw r0, r28, r0
/* 8057BE64  7F FF 02 14 */	add r31, r31, r0
lbl_8057BE68:
/* 8057BE68  3B DE 00 04 */	addi r30, r30, 4
/* 8057BE6C  3B BD FF FF */	addi r29, r29, -1
lbl_8057BE70:
/* 8057BE70  2C 1D 00 00 */	cmpwi r29, 0
/* 8057BE74  40 82 FF 6C */	bne lbl_8057BDE0
/* 8057BE78  93 FB 09 A8 */	stw r31, 0x9a8(r27)
/* 8057BE7C  7F E3 FB 78 */	mr r3, r31
/* 8057BE80  38 80 00 02 */	li r4, 2
/* 8057BE84  4B FF B7 39 */	bl aNSC_set_value_str
/* 8057BE88  39 61 00 20 */	addi r11, r1, 0x20
/* 8057BE8C  4B B1 F0 89 */	bl func_8009AF14
/* 8057BE90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057BE94  7C 08 03 A6 */	mtlr r0
/* 8057BE98  38 21 00 20 */	addi r1, r1, 0x20
/* 8057BE9C  4E 80 00 20 */	blr 

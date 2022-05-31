lbl_805D3BAC:
/* 805D3BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D3BB0  7C 08 02 A6 */	mflr r0
/* 805D3BB4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 805D3BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D3BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D3BC0  7C 7F 1B 78 */	mr r31, r3
/* 805D3BC4  38 64 80 00 */	addi r3, r4, 0x8000 /* 0x00008000@l */
/* 805D3BC8  4B DC 22 A9 */	bl chkButton
/* 805D3BCC  2C 03 00 00 */	cmpwi r3, 0
/* 805D3BD0  41 82 00 50 */	beq lbl_805D3C20
/* 805D3BD4  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 805D3BD8  28 00 00 00 */	cmplwi r0, 0
/* 805D3BDC  40 82 00 44 */	bne lbl_805D3C20
/* 805D3BE0  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 805D3BE4  2C 00 00 02 */	cmpwi r0, 2
/* 805D3BE8  41 82 00 20 */	beq lbl_805D3C08
/* 805D3BEC  40 80 00 28 */	bge lbl_805D3C14
/* 805D3BF0  2C 00 00 01 */	cmpwi r0, 1
/* 805D3BF4  40 80 00 08 */	bge lbl_805D3BFC
/* 805D3BF8  48 00 00 1C */	b lbl_805D3C14
lbl_805D3BFC:
/* 805D3BFC  38 60 04 51 */	li r3, 0x451
/* 805D3C00  48 05 A1 05 */	bl sAdo_SysTrgStart
/* 805D3C04  48 00 00 24 */	b lbl_805D3C28
lbl_805D3C08:
/* 805D3C08  38 60 04 52 */	li r3, 0x452
/* 805D3C0C  48 05 A0 F9 */	bl sAdo_SysTrgStart
/* 805D3C10  48 00 00 18 */	b lbl_805D3C28
lbl_805D3C14:
/* 805D3C14  38 60 04 50 */	li r3, 0x450
/* 805D3C18  48 05 A0 ED */	bl sAdo_SysTrgStart
/* 805D3C1C  48 00 00 0C */	b lbl_805D3C28
lbl_805D3C20:
/* 805D3C20  38 60 04 53 */	li r3, 0x453
/* 805D3C24  48 05 A0 E1 */	bl sAdo_SysTrgStart
lbl_805D3C28:
/* 805D3C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D3C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D3C30  7C 08 03 A6 */	mtlr r0
/* 805D3C34  38 21 00 10 */	addi r1, r1, 0x10
/* 805D3C38  4E 80 00 20 */	blr 

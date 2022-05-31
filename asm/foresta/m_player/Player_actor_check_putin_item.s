lbl_804DDC20:
/* 804DDC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DDC24  7C 08 02 A6 */	mflr r0
/* 804DDC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DDC2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DDC30  7C 9F 23 78 */	mr r31, r4
/* 804DDC34  7C A4 2B 78 */	mr r4, r5
/* 804DDC38  7C C5 33 78 */	mr r5, r6
/* 804DDC3C  4B FF FE C5 */	bl Player_actor_Search_putin_item
/* 804DDC40  28 03 00 00 */	cmplwi r3, 0
/* 804DDC44  41 82 00 14 */	beq lbl_804DDC58
/* 804DDC48  A0 03 00 00 */	lhz r0, 0(r3)
/* 804DDC4C  38 60 00 01 */	li r3, 1
/* 804DDC50  B0 1F 00 00 */	sth r0, 0(r31)
/* 804DDC54  48 00 00 10 */	b lbl_804DDC64
lbl_804DDC58:
/* 804DDC58  38 00 00 00 */	li r0, 0
/* 804DDC5C  38 60 00 00 */	li r3, 0
/* 804DDC60  B0 1F 00 00 */	sth r0, 0(r31)
lbl_804DDC64:
/* 804DDC64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DDC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DDC6C  7C 08 03 A6 */	mtlr r0
/* 804DDC70  38 21 00 10 */	addi r1, r1, 0x10
/* 804DDC74  4E 80 00 20 */	blr 

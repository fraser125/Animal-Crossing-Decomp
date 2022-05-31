lbl_803BFB40:
/* 803BFB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BFB44  7C 08 02 A6 */	mflr r0
/* 803BFB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BFB4C  80 03 04 34 */	lwz r0, 0x434(r3)
/* 803BFB50  2C 00 00 06 */	cmpwi r0, 6
/* 803BFB54  40 82 00 20 */	bne lbl_803BFB74
/* 803BFB58  80 E3 04 58 */	lwz r7, 0x458(r3)
/* 803BFB5C  30 04 FF FF */	addic r0, r4, -1
/* 803BFB60  7C A0 21 10 */	subfe r5, r0, r4
/* 803BFB64  38 C0 00 05 */	li r6, 5
/* 803BFB68  7C E4 3B 78 */	mr r4, r7
/* 803BFB6C  4B FF FF 75 */	bl mMsg_request_main_appear_wait
/* 803BFB70  48 00 00 08 */	b lbl_803BFB78
lbl_803BFB74:
/* 803BFB74  38 60 00 00 */	li r3, 0
lbl_803BFB78:
/* 803BFB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BFB7C  7C 08 03 A6 */	mtlr r0
/* 803BFB80  38 21 00 10 */	addi r1, r1, 0x10
/* 803BFB84  4E 80 00 20 */	blr 

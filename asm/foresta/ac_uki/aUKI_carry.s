lbl_804AE770:
/* 804AE770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AE774  7C 08 02 A6 */	mflr r0
/* 804AE778  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AE77C  80 A3 02 18 */	lwz r5, 0x218(r3)
/* 804AE780  80 03 02 1C */	lwz r0, 0x21c(r3)
/* 804AE784  90 A3 00 28 */	stw r5, 0x28(r3)
/* 804AE788  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804AE78C  80 03 02 20 */	lwz r0, 0x220(r3)
/* 804AE790  90 03 00 30 */	stw r0, 0x30(r3)
/* 804AE794  80 A3 02 18 */	lwz r5, 0x218(r3)
/* 804AE798  80 03 02 1C */	lwz r0, 0x21c(r3)
/* 804AE79C  90 A3 02 68 */	stw r5, 0x268(r3)
/* 804AE7A0  90 03 02 6C */	stw r0, 0x26c(r3)
/* 804AE7A4  80 03 02 20 */	lwz r0, 0x220(r3)
/* 804AE7A8  90 03 02 70 */	stw r0, 0x270(r3)
/* 804AE7AC  80 03 02 34 */	lwz r0, 0x234(r3)
/* 804AE7B0  2C 00 00 02 */	cmpwi r0, 2
/* 804AE7B4  40 82 00 38 */	bne lbl_804AE7EC
/* 804AE7B8  A8 A3 02 62 */	lha r5, 0x262(r3)
/* 804AE7BC  2C 05 00 00 */	cmpwi r5, 0
/* 804AE7C0  40 82 00 0C */	bne lbl_804AE7CC
/* 804AE7C4  38 00 00 00 */	li r0, 0
/* 804AE7C8  48 00 00 10 */	b lbl_804AE7D8
lbl_804AE7CC:
/* 804AE7CC  38 05 FF FF */	addi r0, r5, -1
/* 804AE7D0  B0 03 02 62 */	sth r0, 0x262(r3)
/* 804AE7D4  7C 00 07 34 */	extsh r0, r0
lbl_804AE7D8:
/* 804AE7D8  2C 00 00 00 */	cmpwi r0, 0
/* 804AE7DC  40 82 00 10 */	bne lbl_804AE7EC
/* 804AE7E0  38 A0 00 01 */	li r5, 1
/* 804AE7E4  38 C0 00 00 */	li r6, 0
/* 804AE7E8  48 00 0B 95 */	bl aUKI_set_proc
lbl_804AE7EC:
/* 804AE7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AE7F0  7C 08 03 A6 */	mtlr r0
/* 804AE7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804AE7F8  4E 80 00 20 */	blr 

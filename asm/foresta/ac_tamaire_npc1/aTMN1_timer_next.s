lbl_8058A8F4:
/* 8058A8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A8F8  7C 08 02 A6 */	mflr r0
/* 8058A8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A900  A8 A3 09 A0 */	lha r5, 0x9a0(r3)
/* 8058A904  2C 05 00 00 */	cmpwi r5, 0
/* 8058A908  40 81 00 10 */	ble lbl_8058A918
/* 8058A90C  38 05 FF FF */	addi r0, r5, -1
/* 8058A910  B0 03 09 A0 */	sth r0, 0x9a0(r3)
/* 8058A914  48 00 00 14 */	b lbl_8058A928
lbl_8058A918:
/* 8058A918  88 A3 09 AA */	lbz r5, 0x9aa(r3)
/* 8058A91C  38 A5 00 01 */	addi r5, r5, 1
/* 8058A920  98 A3 09 AA */	stb r5, 0x9aa(r3)
/* 8058A924  48 00 09 29 */	bl aTMN1_setup_think_proc
lbl_8058A928:
/* 8058A928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A92C  7C 08 03 A6 */	mtlr r0
/* 8058A930  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A934  4E 80 00 20 */	blr 

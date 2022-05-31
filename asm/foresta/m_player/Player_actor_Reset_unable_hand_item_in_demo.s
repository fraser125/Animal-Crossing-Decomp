lbl_804DB410:
/* 804DB410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB414  7C 08 02 A6 */	mflr r0
/* 804DB418  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DB420  7C 7F 1B 78 */	mr r31, r3
/* 804DB424  7C 83 23 78 */	mr r3, r4
/* 804DB428  4B FF CD 95 */	bl Player_actor_Check_is_demo_mode
/* 804DB42C  2C 03 00 00 */	cmpwi r3, 0
/* 804DB430  40 82 00 0C */	bne lbl_804DB43C
/* 804DB434  38 00 00 00 */	li r0, 0
/* 804DB438  98 1F 0E 6C */	stb r0, 0xe6c(r31)
lbl_804DB43C:
/* 804DB43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DB444  7C 08 03 A6 */	mtlr r0
/* 804DB448  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB44C  4E 80 00 20 */	blr 

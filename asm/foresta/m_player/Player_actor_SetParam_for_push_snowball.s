lbl_804DD318:
/* 804DD318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DD31C  7C 08 02 A6 */	mflr r0
/* 804DD320  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DD324  39 61 00 18 */	addi r11, r1, 0x18
/* 804DD328  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 804DD32C  4B BB DB A9 */	bl func_8009AED4
/* 804DD330  FF E0 08 90 */	fmr f31, f1
/* 804DD334  7C 9D 23 78 */	mr r29, r4
/* 804DD338  7C BE 2B 78 */	mr r30, r5
/* 804DD33C  4B EF C3 05 */	bl get_player_actor_withoutCheck
/* 804DD340  7C 7F 1B 78 */	mr r31, r3
/* 804DD344  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DD348  2C 00 00 66 */	cmpwi r0, 0x66
/* 804DD34C  40 82 00 44 */	bne lbl_804DD390
/* 804DD350  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804DD354  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804DD358  80 63 00 00 */	lwz r3, 0(r3)
/* 804DD35C  4B EF C2 E5 */	bl get_player_actor_withoutCheck
/* 804DD360  80 9D 00 00 */	lwz r4, 0(r29)
/* 804DD364  80 1D 00 04 */	lwz r0, 4(r29)
/* 804DD368  90 83 00 28 */	stw r4, 0x28(r3)
/* 804DD36C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804DD370  80 1D 00 08 */	lwz r0, 8(r29)
/* 804DD374  90 03 00 30 */	stw r0, 0x30(r3)
/* 804DD378  B3 C3 00 DE */	sth r30, 0xde(r3)
/* 804DD37C  B3 C3 00 36 */	sth r30, 0x36(r3)
/* 804DD380  38 60 00 01 */	li r3, 1
/* 804DD384  D3 FF 01 80 */	stfs f31, 0x180(r31)
/* 804DD388  D3 FF 01 F0 */	stfs f31, 0x1f0(r31)
/* 804DD38C  48 00 00 08 */	b lbl_804DD394
lbl_804DD390:
/* 804DD390  38 60 00 00 */	li r3, 0
lbl_804DD394:
/* 804DD394  39 61 00 18 */	addi r11, r1, 0x18
/* 804DD398  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 804DD39C  4B BB DB 85 */	bl func_8009AF20
/* 804DD3A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DD3A4  7C 08 03 A6 */	mtlr r0
/* 804DD3A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804DD3AC  4E 80 00 20 */	blr 

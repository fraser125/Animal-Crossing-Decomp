lbl_804FD388:
/* 804FD388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD38C  7C 08 02 A6 */	mflr r0
/* 804FD390  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD394  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804FD398  2C 00 00 00 */	cmpwi r0, 0
/* 804FD39C  41 82 00 0C */	beq lbl_804FD3A8
/* 804FD3A0  4B FE 8F 31 */	bl Player_actor_CulcAnimation_Walk
/* 804FD3A4  48 00 00 0C */	b lbl_804FD3B0
lbl_804FD3A8:
/* 804FD3A8  38 81 00 08 */	addi r4, r1, 8
/* 804FD3AC  4B FD 91 DD */	bl Player_actor_CulcAnimation_Base2
lbl_804FD3B0:
/* 804FD3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD3B4  7C 08 03 A6 */	mtlr r0
/* 804FD3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD3BC  4E 80 00 20 */	blr 

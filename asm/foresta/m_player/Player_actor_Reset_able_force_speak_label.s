lbl_804DE2DC:
/* 804DE2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE2E0  7C 08 02 A6 */	mflr r0
/* 804DE2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE2E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE2EC  7C 7F 1B 78 */	mr r31, r3
/* 804DE2F0  7C 83 23 78 */	mr r3, r4
/* 804DE2F4  4B FF 9E C9 */	bl Player_actor_Check_is_demo_mode
/* 804DE2F8  2C 03 00 00 */	cmpwi r3, 0
/* 804DE2FC  40 82 00 0C */	bne lbl_804DE308
/* 804DE300  38 00 00 00 */	li r0, 0
/* 804DE304  90 1F 12 20 */	stw r0, 0x1220(r31)
lbl_804DE308:
/* 804DE308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE30C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE310  7C 08 03 A6 */	mtlr r0
/* 804DE314  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE318  4E 80 00 20 */	blr 

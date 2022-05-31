lbl_804E107C:
/* 804E107C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1080  7C 08 02 A6 */	mflr r0
/* 804E1084  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1088  80 83 0F 30 */	lwz r4, 0xf30(r3)
/* 804E108C  28 04 00 00 */	cmplwi r4, 0
/* 804E1090  41 82 00 0C */	beq lbl_804E109C
/* 804E1094  38 84 02 48 */	addi r4, r4, 0x248
/* 804E1098  4B FF 91 55 */	bl Player_actor_Get_ItemRodTopInitPos
lbl_804E109C:
/* 804E109C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E10A0  7C 08 03 A6 */	mtlr r0
/* 804E10A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E10A8  4E 80 00 20 */	blr 

lbl_804E0C0C:
/* 804E0C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0C10  7C 08 02 A6 */	mflr r0
/* 804E0C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0C18  4B FF FF D1 */	bl Player_actor_Item_CulcAnimation_Base
/* 804E0C1C  20 03 00 01 */	subfic r0, r3, 1
/* 804E0C20  7C 00 00 34 */	cntlzw r0, r0
/* 804E0C24  54 03 D9 7E */	srwi r3, r0, 5
/* 804E0C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0C2C  7C 08 03 A6 */	mtlr r0
/* 804E0C30  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0C34  4E 80 00 20 */	blr 

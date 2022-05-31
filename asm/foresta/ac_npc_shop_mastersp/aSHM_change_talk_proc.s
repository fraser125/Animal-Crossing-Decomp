lbl_8057D5AC:
/* 8057D5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D5B0  7C 08 02 A6 */	mflr r0
/* 8057D5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D5B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D5BC  7C 9F 23 78 */	mr r31, r4
/* 8057D5C0  3C 80 80 6C */	lis r4, proc@ha /* 0x806C0738@ha */
/* 8057D5C4  57 E0 10 3A */	slwi r0, r31, 2
/* 8057D5C8  2C 1F 00 03 */	cmpwi r31, 3
/* 8057D5CC  38 84 07 38 */	addi r4, r4, proc@l /* 0x806C0738@l */
/* 8057D5D0  7C 04 00 2E */	lwzx r0, r4, r0
/* 8057D5D4  90 03 09 A8 */	stw r0, 0x9a8(r3)
/* 8057D5D8  40 82 00 0C */	bne lbl_8057D5E4
/* 8057D5DC  38 60 00 01 */	li r3, 1
/* 8057D5E0  4B E1 B1 D9 */	bl mDemo_Set_talk_return_demo_wait
lbl_8057D5E4:
/* 8057D5E4  2C 1F 00 07 */	cmpwi r31, 7
/* 8057D5E8  40 82 00 0C */	bne lbl_8057D5F4
/* 8057D5EC  4B E4 20 BD */	bl func_803BF6A8
/* 8057D5F0  4B E4 37 69 */	bl mMsg_Set_idling_req
lbl_8057D5F4:
/* 8057D5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D5F8  38 60 00 01 */	li r3, 1
/* 8057D5FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D600  7C 08 03 A6 */	mtlr r0
/* 8057D604  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D608  4E 80 00 20 */	blr 

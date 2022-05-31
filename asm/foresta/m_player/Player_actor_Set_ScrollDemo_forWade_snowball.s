lbl_804D9BF4:
/* 804D9BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D9BF8  7C 08 02 A6 */	mflr r0
/* 804D9BFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D9C00  39 61 00 20 */	addi r11, r1, 0x20
/* 804D9C04  4B BC 12 D1 */	bl func_8009AED4
/* 804D9C08  7C 7D 1B 78 */	mr r29, r3
/* 804D9C0C  7C 9E 23 78 */	mr r30, r4
/* 804D9C10  7C BF 2B 78 */	mr r31, r5
/* 804D9C14  4B F0 03 2D */	bl mPlib_Get_unable_wade
/* 804D9C18  2C 03 00 00 */	cmpwi r3, 0
/* 804D9C1C  40 82 00 3C */	bne lbl_804D9C58
/* 804D9C20  93 DD 12 0C */	stw r30, 0x120c(r29)
/* 804D9C24  3C 60 80 4E */	lis r3, Player_actor_Init_ScrollDemo_forWade_snowball@ha /* 0x804D9A50@ha */
/* 804D9C28  38 A3 9A 50 */	addi r5, r3, Player_actor_Init_ScrollDemo_forWade_snowball@l /* 0x804D9A50@l */
/* 804D9C2C  7F A4 EB 78 */	mr r4, r29
/* 804D9C30  80 DF 00 00 */	lwz r6, 0(r31)
/* 804D9C34  38 60 00 01 */	li r3, 1
/* 804D9C38  80 1F 00 04 */	lwz r0, 4(r31)
/* 804D9C3C  90 DD 12 00 */	stw r6, 0x1200(r29)
/* 804D9C40  90 1D 12 04 */	stw r0, 0x1204(r29)
/* 804D9C44  80 1F 00 08 */	lwz r0, 8(r31)
/* 804D9C48  90 1D 12 08 */	stw r0, 0x1208(r29)
/* 804D9C4C  4B EC 05 11 */	bl mDemo_Request
/* 804D9C50  38 60 00 01 */	li r3, 1
/* 804D9C54  48 00 00 18 */	b lbl_804D9C6C
lbl_804D9C58:
/* 804D9C58  A0 9D 12 1C */	lhz r4, 0x121c(r29)
/* 804D9C5C  38 00 00 01 */	li r0, 1
/* 804D9C60  38 60 00 00 */	li r3, 0
/* 804D9C64  B0 9D 12 10 */	sth r4, 0x1210(r29)
/* 804D9C68  90 1D 12 14 */	stw r0, 0x1214(r29)
lbl_804D9C6C:
/* 804D9C6C  39 61 00 20 */	addi r11, r1, 0x20
/* 804D9C70  4B BC 12 B1 */	bl func_8009AF20
/* 804D9C74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D9C78  7C 08 03 A6 */	mtlr r0
/* 804D9C7C  38 21 00 20 */	addi r1, r1, 0x20
/* 804D9C80  4E 80 00 20 */	blr 

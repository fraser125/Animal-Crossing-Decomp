lbl_804DDD5C:
/* 804DDD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DDD60  7C 08 02 A6 */	mflr r0
/* 804DDD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DDD68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DDD6C  7C 9F 23 78 */	mr r31, r4
/* 804DDD70  4B EF B8 D1 */	bl get_player_actor_withoutCheck
/* 804DDD74  7C 64 1B 78 */	mr r4, r3
/* 804DDD78  3C A0 80 4E */	lis r5, Player_actor_Refuse_pickup_demo_ct@ha /* 0x804E50D0@ha */
/* 804DDD7C  93 E4 12 6C */	stw r31, 0x126c(r4)
/* 804DDD80  38 60 00 09 */	li r3, 9
/* 804DDD84  38 A5 50 D0 */	addi r5, r5, Player_actor_Refuse_pickup_demo_ct@l /* 0x804E50D0@l */
/* 804DDD88  4B EB C3 D5 */	bl mDemo_Request
/* 804DDD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DDD90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DDD94  7C 08 03 A6 */	mtlr r0
/* 804DDD98  38 21 00 10 */	addi r1, r1, 0x10
/* 804DDD9C  4E 80 00 20 */	blr 

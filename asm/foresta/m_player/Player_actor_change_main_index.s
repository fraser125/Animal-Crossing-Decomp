lbl_804D4254:
/* 804D4254  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D4258  7C 08 02 A6 */	mflr r0
/* 804D425C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D4260  39 61 00 20 */	addi r11, r1, 0x20
/* 804D4264  4B BC 6C 71 */	bl func_8009AED4
/* 804D4268  7C 7D 1B 78 */	mr r29, r3
/* 804D426C  7C 9E 23 78 */	mr r30, r4
/* 804D4270  80 03 0D 10 */	lwz r0, 0xd10(r3)
/* 804D4274  2C 00 00 00 */	cmpwi r0, 0
/* 804D4278  41 82 00 E4 */	beq lbl_804D435C
/* 804D427C  80 BD 0D 08 */	lwz r5, 0xd08(r29)
/* 804D4280  38 00 00 00 */	li r0, 0
/* 804D4284  2C 05 00 00 */	cmpwi r5, 0
/* 804D4288  41 80 00 10 */	blt lbl_804D4298
/* 804D428C  2C 05 00 79 */	cmpwi r5, 0x79
/* 804D4290  40 80 00 08 */	bge lbl_804D4298
/* 804D4294  38 00 00 01 */	li r0, 1
lbl_804D4298:
/* 804D4298  2C 00 00 00 */	cmpwi r0, 0
/* 804D429C  41 82 00 1C */	beq lbl_804D42B8
/* 804D42A0  3C 60 80 65 */	lis r3, proc_17070@ha /* 0x80648994@ha */
/* 804D42A4  54 A0 10 3A */	slwi r0, r5, 2
/* 804D42A8  38 63 89 94 */	addi r3, r3, proc_17070@l /* 0x80648994@l */
/* 804D42AC  7C 03 00 2E */	lwzx r0, r3, r0
/* 804D42B0  28 00 00 00 */	cmplwi r0, 0
/* 804D42B4  40 82 00 0C */	bne lbl_804D42C0
lbl_804D42B8:
/* 804D42B8  38 60 00 00 */	li r3, 0
/* 804D42BC  48 00 00 A4 */	b lbl_804D4360
lbl_804D42C0:
/* 804D42C0  7F A3 EB 78 */	mr r3, r29
/* 804D42C4  7F C4 F3 78 */	mr r4, r30
/* 804D42C8  48 00 8C 61 */	bl Player_actor_CheckAndRequest_ItemInOut
/* 804D42CC  7C 65 1B 78 */	mr r5, r3
/* 804D42D0  7F A3 EB 78 */	mr r3, r29
/* 804D42D4  7F C4 F3 78 */	mr r4, r30
/* 804D42D8  48 00 8B D1 */	bl Player_actor_CheckAndRequest_KnockDoor
/* 804D42DC  7C 7F 1B 78 */	mr r31, r3
/* 804D42E0  7F A3 EB 78 */	mr r3, r29
/* 804D42E4  7F E4 FB 78 */	mr r4, r31
/* 804D42E8  48 00 8E D5 */	bl Player_actor_Set_bgm_volume
/* 804D42EC  7F A3 EB 78 */	mr r3, r29
/* 804D42F0  7F C4 F3 78 */	mr r4, r30
/* 804D42F4  4B FF FE D5 */	bl Player_actor_settle_main
/* 804D42F8  7F A3 EB 78 */	mr r3, r29
/* 804D42FC  7F E4 FB 78 */	mr r4, r31
/* 804D4300  48 00 71 11 */	bl Player_actor_Reset_unable_hand_item_in_demo
/* 804D4304  7F A3 EB 78 */	mr r3, r29
/* 804D4308  7F E4 FB 78 */	mr r4, r31
/* 804D430C  48 00 71 45 */	bl Player_actor_Reset_able_hand_all_item_in_demo
/* 804D4310  7F A3 EB 78 */	mr r3, r29
/* 804D4314  7F E4 FB 78 */	mr r4, r31
/* 804D4318  48 00 9F C5 */	bl Player_actor_Reset_able_force_speak_label
/* 804D431C  7F A3 EB 78 */	mr r3, r29
/* 804D4320  7F C4 F3 78 */	mr r4, r30
/* 804D4324  48 00 C4 C1 */	bl Player_actor_change_main_index_other_func1
/* 804D4328  3C 60 80 65 */	lis r3, proc_17070@ha /* 0x80648994@ha */
/* 804D432C  57 E0 10 3A */	slwi r0, r31, 2
/* 804D4330  38 83 89 94 */	addi r4, r3, proc_17070@l /* 0x80648994@l */
/* 804D4334  7F A3 EB 78 */	mr r3, r29
/* 804D4338  7D 84 00 2E */	lwzx r12, r4, r0
/* 804D433C  7F C4 F3 78 */	mr r4, r30
/* 804D4340  7D 89 03 A6 */	mtctr r12
/* 804D4344  4E 80 04 21 */	bctrl 
/* 804D4348  7F A3 EB 78 */	mr r3, r29
/* 804D434C  7F C4 F3 78 */	mr r4, r30
/* 804D4350  48 00 C4 99 */	bl Player_actor_change_main_index_other_func2
/* 804D4354  38 60 00 01 */	li r3, 1
/* 804D4358  48 00 00 08 */	b lbl_804D4360
lbl_804D435C:
/* 804D435C  38 60 00 00 */	li r3, 0
lbl_804D4360:
/* 804D4360  39 61 00 20 */	addi r11, r1, 0x20
/* 804D4364  4B BC 6B BD */	bl func_8009AF20
/* 804D4368  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D436C  7C 08 03 A6 */	mtlr r0
/* 804D4370  38 21 00 20 */	addi r1, r1, 0x20
/* 804D4374  4E 80 00 20 */	blr 

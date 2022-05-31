lbl_804D9704:
/* 804D9704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D9708  7C 08 02 A6 */	mflr r0
/* 804D970C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D9710  39 61 00 20 */	addi r11, r1, 0x20
/* 804D9714  4B BC 17 C1 */	bl func_8009AED4
/* 804D9718  7C 7D 1B 78 */	mr r29, r3
/* 804D971C  7C BE 2B 78 */	mr r30, r5
/* 804D9720  7C DF 33 78 */	mr r31, r6
/* 804D9724  4B FF B0 C5 */	bl Player_actor_CheckController_forFan
/* 804D9728  2C 03 00 00 */	cmpwi r3, 0
/* 804D972C  41 82 00 28 */	beq lbl_804D9754
/* 804D9730  7F A3 EB 78 */	mr r3, r29
/* 804D9734  4B FF FF 11 */	bl Player_actor_CheckAbleSpeed_forItem
/* 804D9738  2C 03 00 00 */	cmpwi r3, 0
/* 804D973C  41 82 00 18 */	beq lbl_804D9754
/* 804D9740  7F A3 EB 78 */	mr r3, r29
/* 804D9744  7F C4 F3 78 */	mr r4, r30
/* 804D9748  7F E5 FB 78 */	mr r5, r31
/* 804D974C  48 02 CC B1 */	bl func_805063FC
/* 804D9750  48 00 00 08 */	b lbl_804D9758
lbl_804D9754:
/* 804D9754  38 60 00 00 */	li r3, 0
lbl_804D9758:
/* 804D9758  39 61 00 20 */	addi r11, r1, 0x20
/* 804D975C  4B BC 17 C5 */	bl func_8009AF20
/* 804D9760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D9764  7C 08 03 A6 */	mtlr r0
/* 804D9768  38 21 00 20 */	addi r1, r1, 0x20
/* 804D976C  4E 80 00 20 */	blr 

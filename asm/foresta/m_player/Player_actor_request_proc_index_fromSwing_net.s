lbl_804F3504:
/* 804F3504  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F3508  7C 08 02 A6 */	mflr r0
/* 804F350C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F3510  39 61 00 20 */	addi r11, r1, 0x20
/* 804F3514  4B BA 79 BD */	bl func_8009AED0
/* 804F3518  2C 05 00 00 */	cmpwi r5, 0
/* 804F351C  7C 7C 1B 78 */	mr r28, r3
/* 804F3520  7C DD 33 78 */	mr r29, r6
/* 804F3524  7C FE 3B 78 */	mr r30, r7
/* 804F3528  7D 1F 43 78 */	mr r31, r8
/* 804F352C  40 82 00 0C */	bne lbl_804F3538
/* 804F3530  2C 1D 00 00 */	cmpwi r29, 0
/* 804F3534  41 82 00 70 */	beq lbl_804F35A4
lbl_804F3538:
/* 804F3538  2C 1E 00 00 */	cmpwi r30, 0
/* 804F353C  41 82 00 38 */	beq lbl_804F3574
/* 804F3540  7C 83 23 78 */	mr r3, r4
/* 804F3544  38 80 00 1A */	li r4, 0x1a
/* 804F3548  48 00 01 55 */	bl func_804F369C
/* 804F354C  2C 03 00 00 */	cmpwi r3, 0
/* 804F3550  41 82 00 54 */	beq lbl_804F35A4
/* 804F3554  2C 1E 00 02 */	cmpwi r30, 2
/* 804F3558  40 82 00 4C */	bne lbl_804F35A4
/* 804F355C  2C 1D 00 00 */	cmpwi r29, 0
/* 804F3560  41 82 00 44 */	beq lbl_804F35A4
/* 804F3564  7F 83 E3 78 */	mr r3, r28
/* 804F3568  4B FE BE CD */	bl Player_actor_sound_AMI_HIT
/* 804F356C  4B FE 19 09 */	bl Player_actor_set_viblation_Swing_net
/* 804F3570  48 00 00 34 */	b lbl_804F35A4
lbl_804F3574:
/* 804F3574  7C 83 23 78 */	mr r3, r4
/* 804F3578  38 80 00 1A */	li r4, 0x1a
/* 804F357C  48 00 08 09 */	bl func_804F3D84
/* 804F3580  2C 03 00 00 */	cmpwi r3, 0
/* 804F3584  41 82 00 20 */	beq lbl_804F35A4
/* 804F3588  7F E3 FB 78 */	mr r3, r31
/* 804F358C  4B FE AD 91 */	bl Player_actor_CheckAndSet_UZAI_forNpc
/* 804F3590  2C 1D 00 00 */	cmpwi r29, 0
/* 804F3594  41 82 00 10 */	beq lbl_804F35A4
/* 804F3598  7F 83 E3 78 */	mr r3, r28
/* 804F359C  4B FE BE 99 */	bl Player_actor_sound_AMI_HIT
/* 804F35A0  4B FE 18 D5 */	bl Player_actor_set_viblation_Swing_net
lbl_804F35A4:
/* 804F35A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804F35A8  4B BA 79 75 */	bl func_8009AF1C
/* 804F35AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F35B0  7C 08 03 A6 */	mtlr r0
/* 804F35B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804F35B8  4E 80 00 20 */	blr 

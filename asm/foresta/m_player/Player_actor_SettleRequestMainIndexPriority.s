lbl_804D536C:
/* 804D536C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D5370  7C 08 02 A6 */	mflr r0
/* 804D5374  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D5378  39 61 00 20 */	addi r11, r1, 0x20
/* 804D537C  4B BC 5B 59 */	bl func_8009AED4
/* 804D5380  7C 7D 1B 78 */	mr r29, r3
/* 804D5384  38 00 00 00 */	li r0, 0
/* 804D5388  80 63 0C F8 */	lwz r3, 0xcf8(r3)
/* 804D538C  2C 03 00 00 */	cmpwi r3, 0
/* 804D5390  41 80 00 10 */	blt lbl_804D53A0
/* 804D5394  2C 03 00 79 */	cmpwi r3, 0x79
/* 804D5398  40 80 00 08 */	bge lbl_804D53A0
/* 804D539C  38 00 00 01 */	li r0, 1
lbl_804D53A0:
/* 804D53A0  2C 00 00 00 */	cmpwi r0, 0
/* 804D53A4  41 82 00 54 */	beq lbl_804D53F8
/* 804D53A8  3C 80 80 64 */	lis r4, data_859@ha /* 0x806467EC@ha */
/* 804D53AC  38 84 67 EC */	addi r4, r4, data_859@l /* 0x806467EC@l */
/* 804D53B0  7F E4 18 AE */	lbzx r31, r4, r3
/* 804D53B4  7F FF 07 75 */	extsb. r31, r31
/* 804D53B8  41 80 00 40 */	blt lbl_804D53F8
/* 804D53BC  2C 1F 00 2D */	cmpwi r31, 0x2d
/* 804D53C0  41 81 00 38 */	bgt lbl_804D53F8
/* 804D53C4  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 804D53C8  2C 00 00 00 */	cmpwi r0, 0
/* 804D53CC  40 82 00 2C */	bne lbl_804D53F8
/* 804D53D0  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 804D53D4  2C 00 00 00 */	cmpwi r0, 0
/* 804D53D8  40 82 00 20 */	bne lbl_804D53F8
/* 804D53DC  83 DD 0D 0C */	lwz r30, 0xd0c(r29)
/* 804D53E0  4B FF FF 05 */	bl Player_actor_Get_SetupRequestMainIndexPriority
/* 804D53E4  7C 1E 18 00 */	cmpw r30, r3
/* 804D53E8  40 82 00 10 */	bne lbl_804D53F8
/* 804D53EC  93 FD 0D 0C */	stw r31, 0xd0c(r29)
/* 804D53F0  38 00 00 01 */	li r0, 1
/* 804D53F4  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_804D53F8:
/* 804D53F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804D53FC  4B BC 5B 25 */	bl func_8009AF20
/* 804D5400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D5404  7C 08 03 A6 */	mtlr r0
/* 804D5408  38 21 00 20 */	addi r1, r1, 0x20
/* 804D540C  4E 80 00 20 */	blr 

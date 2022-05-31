lbl_8042DB10:
/* 8042DB10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042DB14  7C 08 02 A6 */	mflr r0
/* 8042DB18  3C A0 80 43 */	lis r5, aMBX_actor_move@ha /* 0x8042DABC@ha */
/* 8042DB1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042DB20  38 05 DA BC */	addi r0, r5, aMBX_actor_move@l /* 0x8042DABC@l */
/* 8042DB24  38 A0 00 00 */	li r5, 0
/* 8042DB28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042DB2C  7C 7F 1B 78 */	mr r31, r3
/* 8042DB30  3C 60 80 43 */	lis r3, aMBX_actor_draw@ha /* 0x8042D268@ha */
/* 8042DB34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042DB38  7C 9E 23 78 */	mr r30, r4
/* 8042DB3C  38 81 00 08 */	addi r4, r1, 8
/* 8042DB40  90 1F 01 64 */	stw r0, 0x164(r31)
/* 8042DB44  38 03 D2 68 */	addi r0, r3, aMBX_actor_draw@l /* 0x8042D268@l */
/* 8042DB48  90 1F 01 68 */	stw r0, 0x168(r31)
/* 8042DB4C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8042DB50  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8042DB54  90 61 00 08 */	stw r3, 8(r1)
/* 8042DB58  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042DB5C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8042DB60  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042DB64  80 7F 03 18 */	lwz r3, 0x318(r31)
/* 8042DB68  3C 63 00 01 */	addis r3, r3, 1
/* 8042DB6C  38 03 F0 01 */	addi r0, r3, -4095
/* 8042DB70  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8042DB74  4B F7 9C BD */	bl mFI_SetFG_common
/* 8042DB78  7F E3 FB 78 */	mr r3, r31
/* 8042DB7C  38 80 00 00 */	li r4, 0
/* 8042DB80  4B FF FE A5 */	bl aMBX_setupAction
/* 8042DB84  7F E3 FB 78 */	mr r3, r31
/* 8042DB88  4B FF FA 45 */	bl aMBX_check_flag
/* 8042DB8C  C0 1F 02 4C */	lfs f0, 0x24c(r31)
/* 8042DB90  7F E3 FB 78 */	mr r3, r31
/* 8042DB94  7F C4 F3 78 */	mr r4, r30
/* 8042DB98  D0 1F 02 58 */	stfs f0, 0x258(r31)
/* 8042DB9C  4B FF FF 21 */	bl aMBX_actor_move
/* 8042DBA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042DBA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042DBA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042DBAC  7C 08 03 A6 */	mtlr r0
/* 8042DBB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8042DBB4  4E 80 00 20 */	blr 

lbl_80526E60:
/* 80526E60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80526E64  7C 08 02 A6 */	mflr r0
/* 80526E68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80526E6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80526E70  4B B7 40 65 */	bl func_8009AED4
/* 80526E74  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80526E78  7C 7D 1B 78 */	mr r29, r3
/* 80526E7C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80526E80  7C 9E 23 78 */	mr r30, r4
/* 80526E84  3F E5 00 02 */	addis r31, r5, 2
/* 80526E88  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80526E8C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80526E90  7D 89 03 A6 */	mtctr r12
/* 80526E94  4E 80 04 21 */	bctrl 
/* 80526E98  2C 03 00 01 */	cmpwi r3, 1
/* 80526E9C  40 82 00 44 */	bne lbl_80526EE0
/* 80526EA0  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 80526EA4  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A0EDC@ha */
/* 80526EA8  38 A3 0E DC */	addi r5, r3, ct_data@l /* 0x806A0EDC@l */
/* 80526EAC  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 80526EB0  7F A3 EB 78 */	mr r3, r29
/* 80526EB4  7F C4 F3 78 */	mr r4, r30
/* 80526EB8  7D 89 03 A6 */	mtctr r12
/* 80526EBC  4E 80 04 21 */	bctrl 
/* 80526EC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80526EC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80526EC8  3C 63 00 03 */	addis r3, r3, 3
/* 80526ECC  88 03 88 7F */	lbz r0, -0x7781(r3)
/* 80526ED0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80526ED4  41 82 00 0C */	beq lbl_80526EE0
/* 80526ED8  7F A3 EB 78 */	mr r3, r29
/* 80526EDC  4B E4 D5 65 */	bl Actor_delete
lbl_80526EE0:
/* 80526EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80526EE4  4B B7 40 3D */	bl func_8009AF20
/* 80526EE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80526EEC  7C 08 03 A6 */	mtlr r0
/* 80526EF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80526EF4  4E 80 00 20 */	blr 

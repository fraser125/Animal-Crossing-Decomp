lbl_805C1748:
/* 805C1748  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C174C  7C 08 02 A6 */	mflr r0
/* 805C1750  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C1754  39 61 00 40 */	addi r11, r1, 0x40
/* 805C1758  4B AD 97 7D */	bl func_8009AED4
/* 805C175C  7C 9F 23 78 */	mr r31, r4
/* 805C1760  7C 7E 1B 78 */	mr r30, r3
/* 805C1764  7F E3 FB 78 */	mr r3, r31
/* 805C1768  4B E1 7E D9 */	bl get_player_actor_withoutCheck
/* 805C176C  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805C1770  7C 7D 1B 78 */	mr r29, r3
/* 805C1774  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805C1778  38 61 00 14 */	addi r3, r1, 0x14
/* 805C177C  38 81 00 10 */	addi r4, r1, 0x10
/* 805C1780  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805C1784  38 A1 00 24 */	addi r5, r1, 0x24
/* 805C1788  90 01 00 28 */	stw r0, 0x28(r1)
/* 805C178C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805C1790  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805C1794  4B DE 3F CD */	bl mFI_Wpos2BlockNum
/* 805C1798  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805C179C  38 61 00 0C */	addi r3, r1, 0xc
/* 805C17A0  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805C17A4  38 81 00 08 */	addi r4, r1, 8
/* 805C17A8  38 A1 00 18 */	addi r5, r1, 0x18
/* 805C17AC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805C17B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805C17B4  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805C17B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C17BC  4B DE 3F A5 */	bl mFI_Wpos2BlockNum
/* 805C17C0  7F A4 EB 78 */	mr r4, r29
/* 805C17C4  38 60 00 01 */	li r3, 1
/* 805C17C8  4B DD 8A 9D */	bl mDemo_Check
/* 805C17CC  2C 03 00 00 */	cmpwi r3, 0
/* 805C17D0  40 82 00 58 */	bne lbl_805C1828
/* 805C17D4  7F A4 EB 78 */	mr r4, r29
/* 805C17D8  38 60 00 05 */	li r3, 5
/* 805C17DC  4B DD 8A 89 */	bl mDemo_Check
/* 805C17E0  2C 03 00 00 */	cmpwi r3, 0
/* 805C17E4  40 82 00 44 */	bne lbl_805C1828
/* 805C17E8  7F A4 EB 78 */	mr r4, r29
/* 805C17EC  38 60 00 10 */	li r3, 0x10
/* 805C17F0  4B DD 8A 75 */	bl mDemo_Check
/* 805C17F4  2C 03 00 00 */	cmpwi r3, 0
/* 805C17F8  40 82 00 30 */	bne lbl_805C1828
/* 805C17FC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805C1800  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805C1804  7C 03 00 00 */	cmpw r3, r0
/* 805C1808  40 82 00 14 */	bne lbl_805C181C
/* 805C180C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805C1810  80 01 00 08 */	lwz r0, 8(r1)
/* 805C1814  7C 03 00 00 */	cmpw r3, r0
/* 805C1818  41 82 00 10 */	beq lbl_805C1828
lbl_805C181C:
/* 805C181C  7F C3 F3 78 */	mr r3, r30
/* 805C1820  4B DB 2C 21 */	bl Actor_delete
/* 805C1824  48 00 00 18 */	b lbl_805C183C
lbl_805C1828:
/* 805C1828  81 9E 02 A0 */	lwz r12, 0x2a0(r30)
/* 805C182C  7F C3 F3 78 */	mr r3, r30
/* 805C1830  7F E4 FB 78 */	mr r4, r31
/* 805C1834  7D 89 03 A6 */	mtctr r12
/* 805C1838  4E 80 04 21 */	bctrl 
lbl_805C183C:
/* 805C183C  39 61 00 40 */	addi r11, r1, 0x40
/* 805C1840  4B AD 96 E1 */	bl func_8009AF20
/* 805C1844  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C1848  7C 08 03 A6 */	mtlr r0
/* 805C184C  38 21 00 40 */	addi r1, r1, 0x40
/* 805C1850  4E 80 00 20 */	blr 

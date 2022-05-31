lbl_80405CD4:
/* 80405CD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80405CD8  7C 08 02 A6 */	mflr r0
/* 80405CDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80405CE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80405CE4  4B C9 51 ED */	bl func_8009AED0
/* 80405CE8  3C 60 81 1C */	lis r3, graph_class@ha /* 0x811C5330@ha */
/* 80405CEC  3C 80 80 65 */	lis r4, data_806543D0@ha /* 0x806543D0@ha */
/* 80405CF0  38 63 53 30 */	addi r3, r3, graph_class@l /* 0x811C5330@l */
/* 80405CF4  38 04 43 D0 */	addi r0, r4, data_806543D0@l /* 0x806543D0@l */
/* 80405CF8  7C 7E 1B 78 */	mr r30, r3
/* 80405CFC  7C 1D 03 78 */	mr r29, r0
/* 80405D00  4B FF FA 15 */	bl graph_ct
/* 80405D04  3C 60 81 1C */	lis r3, game_class_p@ha /* 0x811C531C@ha */
/* 80405D08  3B E3 53 1C */	addi r31, r3, game_class_p@l /* 0x811C531C@l */
/* 80405D0C  48 00 00 AC */	b lbl_80405DB8
lbl_80405D10:
/* 80405D10  83 9D 00 2C */	lwz r28, 0x2c(r29)
/* 80405D14  7F 83 E3 78 */	mr r3, r28
/* 80405D18  4B C5 71 F1 */	bl func_8005CF08
/* 80405D1C  7F 84 E3 78 */	mr r4, r28
/* 80405D20  7C 7C 1B 78 */	mr r28, r3
/* 80405D24  93 9F 00 00 */	stw r28, 0(r31)
/* 80405D28  4B C5 73 41 */	bl bzero
/* 80405D2C  38 00 00 02 */	li r0, 2
/* 80405D30  7F 83 E3 78 */	mr r3, r28
/* 80405D34  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405D38  7F C5 F3 78 */	mr r5, r30
/* 80405D3C  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 80405D40  4B FF F3 CD */	bl game_ct
/* 80405D44  4B C4 52 0D */	bl emu64_refresh
/* 80405D48  38 00 00 03 */	li r0, 3
/* 80405D4C  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405D50  48 00 00 1C */	b lbl_80405D6C
lbl_80405D54:
/* 80405D54  4B C0 24 A9 */	bl dvderr_draw
/* 80405D58  2C 03 00 00 */	cmpwi r3, 0
/* 80405D5C  40 82 00 10 */	bne lbl_80405D6C
/* 80405D60  7F C3 F3 78 */	mr r3, r30
/* 80405D64  7F 84 E3 78 */	mr r4, r28
/* 80405D68  4B FF FD E5 */	bl graph_main
lbl_80405D6C:
/* 80405D6C  7F 83 E3 78 */	mr r3, r28
/* 80405D70  4B FF F4 CD */	bl game_is_doing
/* 80405D74  2C 03 00 00 */	cmpwi r3, 0
/* 80405D78  40 82 FF DC */	bne lbl_80405D54
/* 80405D7C  7F 83 E3 78 */	mr r3, r28
/* 80405D80  4B FF F8 55 */	bl game_get_next_game_dlftbl
/* 80405D84  38 00 00 12 */	li r0, 0x12
/* 80405D88  7C 7D 1B 78 */	mr r29, r3
/* 80405D8C  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405D90  38 00 00 13 */	li r0, 0x13
/* 80405D94  7F 83 E3 78 */	mr r3, r28
/* 80405D98  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405D9C  4B FF F4 31 */	bl game_dt
/* 80405DA0  38 00 00 14 */	li r0, 0x14
/* 80405DA4  7F 83 E3 78 */	mr r3, r28
/* 80405DA8  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80405DAC  4B C5 71 89 */	bl free
/* 80405DB0  38 00 00 00 */	li r0, 0
/* 80405DB4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80405DB8:
/* 80405DB8  28 1D 00 00 */	cmplwi r29, 0
/* 80405DBC  40 82 FF 54 */	bne lbl_80405D10
/* 80405DC0  7F C3 F3 78 */	mr r3, r30
/* 80405DC4  4B FF F9 C1 */	bl graph_dt
/* 80405DC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80405DCC  4B C9 51 51 */	bl func_8009AF1C
/* 80405DD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80405DD4  7C 08 03 A6 */	mtlr r0
/* 80405DD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80405DDC  4E 80 00 20 */	blr 

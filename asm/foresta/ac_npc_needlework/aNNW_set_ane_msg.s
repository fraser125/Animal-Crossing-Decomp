lbl_80564718:
/* 80564718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056471C  7C 08 02 A6 */	mflr r0
/* 80564720  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80564724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80564728  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056472C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80564730  3F E4 00 02 */	addis r31, r4, 2
/* 80564734  93 C1 00 08 */	stw r30, 8(r1)
/* 80564738  7C 7E 1B 78 */	mr r30, r3
/* 8056473C  80 7F 60 F8 */	lwz r3, 0x60f8(r31)
/* 80564740  28 03 00 00 */	cmplwi r3, 0
/* 80564744  41 82 00 48 */	beq lbl_8056478C
/* 80564748  81 83 00 00 */	lwz r12, 0(r3)
/* 8056474C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D071@ha */
/* 80564750  38 63 D0 71 */	addi r3, r3, 0xD071 /* 0x0000D071@l */
/* 80564754  7D 89 03 A6 */	mtctr r12
/* 80564758  4E 80 04 21 */	bctrl 
/* 8056475C  2C 03 00 00 */	cmpwi r3, 0
/* 80564760  40 82 00 2C */	bne lbl_8056478C
/* 80564764  80 BF 60 F8 */	lwz r5, 0x60f8(r31)
/* 80564768  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D071@ha */
/* 8056476C  38 63 D0 71 */	addi r3, r3, 0xD071 /* 0x0000D071@l */
/* 80564770  38 80 00 01 */	li r4, 1
/* 80564774  81 85 00 08 */	lwz r12, 8(r5)
/* 80564778  7D 89 03 A6 */	mtctr r12
/* 8056477C  4E 80 04 21 */	bctrl 
/* 80564780  38 80 00 0B */	li r4, 0xb
/* 80564784  7C 7F 1B 78 */	mr r31, r3
/* 80564788  48 00 00 28 */	b lbl_805647B0
lbl_8056478C:
/* 8056478C  4B FF D0 01 */	bl aNNW_get_make_sister_message
/* 80564790  4B FF CF 49 */	bl func_805616D8
/* 80564794  7C 7F 1B 78 */	mr r31, r3
/* 80564798  4B FF D1 55 */	bl aNNW_get_next_sister_message
/* 8056479C  2C 03 00 00 */	cmpwi r3, 0
/* 805647A0  41 82 00 0C */	beq lbl_805647AC
/* 805647A4  38 80 00 09 */	li r4, 9
/* 805647A8  48 00 00 08 */	b lbl_805647B0
lbl_805647AC:
/* 805647AC  38 80 00 0B */	li r4, 0xb
lbl_805647B0:
/* 805647B0  7F C3 F3 78 */	mr r3, r30
/* 805647B4  4B FF FC D5 */	bl aNNW_change_talk_proc
/* 805647B8  7F E3 FB 78 */	mr r3, r31
/* 805647BC  4B E3 3D 59 */	bl mDemo_Set_msg_num
/* 805647C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805647C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805647C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805647CC  7C 08 03 A6 */	mtlr r0
/* 805647D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805647D4  4E 80 00 20 */	blr 

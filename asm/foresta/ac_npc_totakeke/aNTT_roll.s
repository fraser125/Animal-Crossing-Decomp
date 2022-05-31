lbl_80586FA8:
/* 80586FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586FAC  7C 08 02 A6 */	mflr r0
/* 80586FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80586FB8  7C 9F 23 78 */	mr r31, r4
/* 80586FBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80586FC0  7C 7E 1B 78 */	mr r30, r3
/* 80586FC4  7F E3 FB 78 */	mr r3, r31
/* 80586FC8  4B E3 25 45 */	bl staffroll_light_proc_start
/* 80586FCC  A8 7E 09 98 */	lha r3, 0x998(r30)
/* 80586FD0  2C 03 00 00 */	cmpwi r3, 0
/* 80586FD4  40 81 00 10 */	ble lbl_80586FE4
/* 80586FD8  38 03 FF FF */	addi r0, r3, -1
/* 80586FDC  B0 1E 09 98 */	sth r0, 0x998(r30)
/* 80586FE0  48 00 00 1C */	b lbl_80586FFC
lbl_80586FE4:
/* 80586FE4  88 BE 09 A4 */	lbz r5, 0x9a4(r30)
/* 80586FE8  7F C3 F3 78 */	mr r3, r30
/* 80586FEC  7F E4 FB 78 */	mr r4, r31
/* 80586FF0  38 A5 00 01 */	addi r5, r5, 1
/* 80586FF4  98 BE 09 A4 */	stb r5, 0x9a4(r30)
/* 80586FF8  48 00 06 0D */	bl aNTT_setup_think_proc
lbl_80586FFC:
/* 80586FFC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80587000  7F C3 F3 78 */	mr r3, r30
/* 80587004  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80587008  7F E4 FB 78 */	mr r4, r31
/* 8058700C  3C A5 00 02 */	addis r5, r5, 2
/* 80587010  80 A5 60 E4 */	lwz r5, 0x60e4(r5)
/* 80587014  81 85 00 18 */	lwz r12, 0x18(r5)
/* 80587018  7D 89 03 A6 */	mtctr r12
/* 8058701C  4E 80 04 21 */	bctrl 
/* 80587020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587024  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80587028  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058702C  7C 08 03 A6 */	mtlr r0
/* 80587030  38 21 00 10 */	addi r1, r1, 0x10
/* 80587034  4E 80 00 20 */	blr 

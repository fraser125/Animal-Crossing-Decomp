lbl_8050DB04:
/* 8050DB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050DB08  7C 08 02 A6 */	mflr r0
/* 8050DB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050DB10  80 03 01 90 */	lwz r0, 0x190(r3)
/* 8050DB14  2C 00 00 01 */	cmpwi r0, 1
/* 8050DB18  40 82 00 0C */	bne lbl_8050DB24
/* 8050DB1C  4B EA 3C ED */	bl Balloon_look_up
/* 8050DB20  48 00 00 08 */	b lbl_8050DB28
lbl_8050DB24:
/* 8050DB24  4B EA 3C CD */	bl Balloon_kill
lbl_8050DB28:
/* 8050DB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050DB2C  7C 08 03 A6 */	mtlr r0
/* 8050DB30  38 21 00 10 */	addi r1, r1, 0x10
/* 8050DB34  4E 80 00 20 */	blr 

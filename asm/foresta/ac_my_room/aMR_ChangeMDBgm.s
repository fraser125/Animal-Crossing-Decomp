lbl_80471C5C:
/* 80471C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80471C60  7C 08 02 A6 */	mflr r0
/* 80471C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80471C68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80471C6C  7C 7F 1B 78 */	mr r31, r3
/* 80471C70  93 C1 00 08 */	stw r30, 8(r1)
/* 80471C74  7C 9E 23 78 */	mr r30, r4
/* 80471C78  88 03 04 6C */	lbz r0, 0x46c(r3)
/* 80471C7C  2C 00 00 01 */	cmpwi r0, 1
/* 80471C80  40 82 00 EC */	bne lbl_80471D6C
/* 80471C84  80 1F 04 78 */	lwz r0, 0x478(r31)
/* 80471C88  2C 00 00 00 */	cmpwi r0, 0
/* 80471C8C  40 82 00 44 */	bne lbl_80471CD0
/* 80471C90  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471C94  2C 00 FF FF */	cmpwi r0, -1
/* 80471C98  41 82 00 C4 */	beq lbl_80471D5C
/* 80471C9C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80471CA0  38 80 00 00 */	li r4, 0
/* 80471CA4  4B F0 A1 CD */	bl mBGMPsComp_make_ps_room
/* 80471CA8  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471CAC  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80471CB0  41 82 00 08 */	beq lbl_80471CB8
/* 80471CB4  4B F0 AA ED */	bl mBGMPsComp_MDPlayerPos_make
lbl_80471CB8:
/* 80471CB8  38 00 00 01 */	li r0, 1
/* 80471CBC  90 1F 04 78 */	stw r0, 0x478(r31)
/* 80471CC0  93 DF 04 74 */	stw r30, 0x474(r31)
/* 80471CC4  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471CC8  90 1F 04 68 */	stw r0, 0x468(r31)
/* 80471CCC  48 00 00 90 */	b lbl_80471D5C
lbl_80471CD0:
/* 80471CD0  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471CD4  2C 00 FF FF */	cmpwi r0, -1
/* 80471CD8  40 82 00 30 */	bne lbl_80471D08
/* 80471CDC  80 1F 04 68 */	lwz r0, 0x468(r31)
/* 80471CE0  38 80 00 00 */	li r4, 0
/* 80471CE4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80471CE8  4B F0 A7 31 */	bl mBGMPsComp_delete_ps_room
/* 80471CEC  4B F0 AA C9 */	bl mBGMPsComp_MDPlayerPos_delete
/* 80471CF0  38 00 00 00 */	li r0, 0
/* 80471CF4  90 1F 04 78 */	stw r0, 0x478(r31)
/* 80471CF8  90 1F 04 74 */	stw r0, 0x474(r31)
/* 80471CFC  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471D00  90 1F 04 68 */	stw r0, 0x468(r31)
/* 80471D04  48 00 00 58 */	b lbl_80471D5C
lbl_80471D08:
/* 80471D08  80 1F 04 68 */	lwz r0, 0x468(r31)
/* 80471D0C  38 80 00 00 */	li r4, 0
/* 80471D10  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80471D14  4B F0 A7 05 */	bl mBGMPsComp_delete_ps_room
/* 80471D18  80 1F 04 68 */	lwz r0, 0x468(r31)
/* 80471D1C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80471D20  41 82 00 08 */	beq lbl_80471D28
/* 80471D24  4B F0 AA 91 */	bl mBGMPsComp_MDPlayerPos_delete
lbl_80471D28:
/* 80471D28  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471D2C  38 80 00 00 */	li r4, 0
/* 80471D30  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80471D34  4B F0 A1 3D */	bl mBGMPsComp_make_ps_room
/* 80471D38  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471D3C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80471D40  41 82 00 08 */	beq lbl_80471D48
/* 80471D44  4B F0 AA 5D */	bl mBGMPsComp_MDPlayerPos_make
lbl_80471D48:
/* 80471D48  38 00 00 01 */	li r0, 1
/* 80471D4C  90 1F 04 78 */	stw r0, 0x478(r31)
/* 80471D50  93 DF 04 74 */	stw r30, 0x474(r31)
/* 80471D54  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471D58  90 1F 04 68 */	stw r0, 0x468(r31)
lbl_80471D5C:
/* 80471D5C  38 00 00 00 */	li r0, 0
/* 80471D60  98 1F 04 6C */	stb r0, 0x46c(r31)
/* 80471D64  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80471D68  90 1F 04 68 */	stw r0, 0x468(r31)
lbl_80471D6C:
/* 80471D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80471D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80471D74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80471D78  7C 08 03 A6 */	mtlr r0
/* 80471D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80471D80  4E 80 00 20 */	blr 

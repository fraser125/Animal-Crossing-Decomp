.include "macros.inc"

.section .text

.org 0x80060C28

.global osContInit
osContInit:
/* 80060C28 0005DB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80060C2C 0005DB8C  7C 08 02 A6 */	mflr r0
/* 80060C30 0005DB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80060C34 0005DB94  80 0D 8B 08 */	lwz r0, __osContinitialized-_SDA_BASE_(r13)
/* 80060C38 0005DB98  2C 00 00 00 */	cmpwi r0, 0
/* 80060C3C 0005DB9C  41 82 00 0C */	beq lbl_80060C48
/* 80060C40 0005DBA0  38 60 00 00 */	li r3, 0
/* 80060C44 0005DBA4  48 00 00 24 */	b lbl_80060C68
lbl_80060C48:
/* 80060C48 0005DBA8  38 60 00 01 */	li r3, 1
/* 80060C4C 0005DBAC  38 00 00 04 */	li r0, 4
/* 80060C50 0005DBB0  90 6D 8B 08 */	stw r3, __osContinitialized-_SDA_BASE_(r13)
/* 80060C54 0005DBB4  7C 83 23 78 */	mr r3, r4
/* 80060C58 0005DBB8  7C A4 2B 78 */	mr r4, r5
/* 80060C5C 0005DBBC  98 0D 8B 0C */	stb r0, lbl_8021868C-_SDA_BASE_(r13)
/* 80060C60 0005DBC0  48 00 00 19 */	bl __osContGetInitData
/* 80060C64 0005DBC4  38 60 00 00 */	li r3, 0
lbl_80060C68:
/* 80060C68 0005DBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80060C6C 0005DBCC  7C 08 03 A6 */	mtlr r0
/* 80060C70 0005DBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80060C74 0005DBD4  4E 80 00 20 */	blr 

.global __osContGetInitData
__osContGetInitData:
/* 80060C78 0005DBD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80060C7C 0005DBDC  7C 08 02 A6 */	mflr r0
/* 80060C80 0005DBE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80060C84 0005DBE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80060C88 0005DBE8  3B E0 00 00 */	li r31, 0
/* 80060C8C 0005DBEC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80060C90 0005DBF0  3B C0 00 00 */	li r30, 0
/* 80060C94 0005DBF4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80060C98 0005DBF8  7C 9D 23 78 */	mr r29, r4
/* 80060C9C 0005DBFC  93 81 00 20 */	stw r28, 0x20(r1)
/* 80060CA0 0005DC00  7C 7C 1B 78 */	mr r28, r3
/* 80060CA4 0005DC04  48 00 00 A8 */	b lbl_80060D4C
lbl_80060CA8:
/* 80060CA8 0005DC08  7F E4 FB 78 */	mr r4, r31
/* 80060CAC 0005DC0C  38 61 00 08 */	addi r3, r1, 8
/* 80060CB0 0005DC10  48 00 07 19 */	bl JC_JUTGamePad_getPadStatus
/* 80060CB4 0005DC14  88 01 00 12 */	lbz r0, 0x12(r1)
/* 80060CB8 0005DC18  7C 00 07 74 */	extsb r0, r0
/* 80060CBC 0005DC1C  2C 00 FF FD */	cmpwi r0, -3
/* 80060CC0 0005DC20  40 82 00 10 */	bne lbl_80060CD0
/* 80060CC4 0005DC24  38 00 00 00 */	li r0, 0
/* 80060CC8 0005DC28  98 1D 00 03 */	stb r0, 3(r29)
/* 80060CCC 0005DC2C  48 00 00 50 */	b lbl_80060D1C
lbl_80060CD0:
/* 80060CD0 0005DC30  2C 00 FF FE */	cmpwi r0, -2
/* 80060CD4 0005DC34  41 82 00 28 */	beq lbl_80060CFC
/* 80060CD8 0005DC38  40 80 00 10 */	bge lbl_80060CE8
/* 80060CDC 0005DC3C  2C 00 FF FD */	cmpwi r0, -3
/* 80060CE0 0005DC40  40 80 00 28 */	bge lbl_80060D08
/* 80060CE4 0005DC44  48 00 00 30 */	b lbl_80060D14
lbl_80060CE8:
/* 80060CE8 0005DC48  2C 00 00 00 */	cmpwi r0, 0
/* 80060CEC 0005DC4C  40 80 00 28 */	bge lbl_80060D14
/* 80060CF0 0005DC50  38 00 00 08 */	li r0, 8
/* 80060CF4 0005DC54  98 1D 00 03 */	stb r0, 3(r29)
/* 80060CF8 0005DC58  48 00 00 24 */	b lbl_80060D1C
lbl_80060CFC:
/* 80060CFC 0005DC5C  38 00 00 08 */	li r0, 8
/* 80060D00 0005DC60  98 1D 00 03 */	stb r0, 3(r29)
/* 80060D04 0005DC64  48 00 00 18 */	b lbl_80060D1C
lbl_80060D08:
/* 80060D08 0005DC68  38 00 00 04 */	li r0, 4
/* 80060D0C 0005DC6C  98 1D 00 03 */	stb r0, 3(r29)
/* 80060D10 0005DC70  48 00 00 0C */	b lbl_80060D1C
lbl_80060D14:
/* 80060D14 0005DC74  38 00 00 00 */	li r0, 0
/* 80060D18 0005DC78  98 1D 00 03 */	stb r0, 3(r29)
lbl_80060D1C:
/* 80060D1C 0005DC7C  88 1D 00 03 */	lbz r0, 3(r29)
/* 80060D20 0005DC80  28 00 00 00 */	cmplwi r0, 0
/* 80060D24 0005DC84  40 82 00 20 */	bne lbl_80060D44
/* 80060D28 0005DC88  38 00 00 05 */	li r0, 5
/* 80060D2C 0005DC8C  38 60 00 01 */	li r3, 1
/* 80060D30 0005DC90  B0 1D 00 00 */	sth r0, 0(r29)
/* 80060D34 0005DC94  7C 60 F8 30 */	slw r0, r3, r31
/* 80060D38 0005DC98  7F C0 03 78 */	or r0, r30, r0
/* 80060D3C 0005DC9C  98 7D 00 02 */	stb r3, 2(r29)
/* 80060D40 0005DCA0  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_80060D44:
/* 80060D44 0005DCA4  3B FF 00 01 */	addi r31, r31, 1
/* 80060D48 0005DCA8  3B BD 00 04 */	addi r29, r29, 4
lbl_80060D4C:
/* 80060D4C 0005DCAC  88 0D 8B 0C */	lbz r0, lbl_8021868C-_SDA_BASE_(r13)
/* 80060D50 0005DCB0  7C 1F 00 00 */	cmpw r31, r0
/* 80060D54 0005DCB4  41 80 FF 54 */	blt lbl_80060CA8
/* 80060D58 0005DCB8  9B DC 00 00 */	stb r30, 0(r28)
/* 80060D5C 0005DCBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80060D60 0005DCC0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80060D64 0005DCC4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80060D68 0005DCC8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80060D6C 0005DCCC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80060D70 0005DCD0  7C 08 03 A6 */	mtlr r0
/* 80060D74 0005DCD4  38 21 00 30 */	addi r1, r1, 0x30
/* 80060D78 0005DCD8  4E 80 00 20 */	blr 

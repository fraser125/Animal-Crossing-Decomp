lbl_804DE31C:
/* 804DE31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE320  7C 08 02 A6 */	mflr r0
/* 804DE324  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE32C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DE330  41 82 00 78 */	beq lbl_804DE3A8
/* 804DE334  88 1F 00 02 */	lbz r0, 2(r31)
/* 804DE338  28 00 00 04 */	cmplwi r0, 4
/* 804DE33C  40 82 00 6C */	bne lbl_804DE3A8
/* 804DE340  80 9F 01 7C */	lwz r4, 0x17c(r31)
/* 804DE344  28 04 00 00 */	cmplwi r4, 0
/* 804DE348  41 82 00 58 */	beq lbl_804DE3A0
/* 804DE34C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE350  38 84 00 10 */	addi r4, r4, 0x10
/* 804DE354  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE358  38 A0 00 07 */	li r5, 7
/* 804DE35C  3C 63 00 02 */	addis r3, r3, 2
/* 804DE360  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804DE364  4B EE DA 15 */	bl mNpc_GetAnimalMemoryIdx
/* 804DE368  2C 03 FF FF */	cmpwi r3, -1
/* 804DE36C  41 82 00 34 */	beq lbl_804DE3A0
/* 804DE370  A0 1F 00 06 */	lhz r0, 6(r31)
/* 804DE374  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 804DE378  2C 00 00 0E */	cmpwi r0, 0xe
/* 804DE37C  40 82 00 24 */	bne lbl_804DE3A0
/* 804DE380  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 804DE384  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 804DE388  40 82 00 18 */	bne lbl_804DE3A0
/* 804DE38C  88 7F 08 78 */	lbz r3, 0x878(r31)
/* 804DE390  38 00 00 01 */	li r0, 1
/* 804DE394  38 63 00 01 */	addi r3, r3, 1
/* 804DE398  98 7F 08 78 */	stb r3, 0x878(r31)
/* 804DE39C  98 1F 08 79 */	stb r0, 0x879(r31)
lbl_804DE3A0:
/* 804DE3A0  38 60 00 01 */	li r3, 1
/* 804DE3A4  48 00 00 08 */	b lbl_804DE3AC
lbl_804DE3A8:
/* 804DE3A8  38 60 00 00 */	li r3, 0
lbl_804DE3AC:
/* 804DE3AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE3B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE3B4  7C 08 03 A6 */	mtlr r0
/* 804DE3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE3BC  4E 80 00 20 */	blr 

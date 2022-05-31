lbl_804F3BE0:
/* 804F3BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3BE4  7C 08 02 A6 */	mflr r0
/* 804F3BE8  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804F3BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3BF0  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804F3BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F3BF8  7C 7F 1B 78 */	mr r31, r3
/* 804F3BFC  3C 60 80 64 */	lis r3, lit_5205@ha /* 0x80647CE0@ha */
/* 804F3C00  C0 5F 0D 18 */	lfs f2, 0xd18(r31)
/* 804F3C04  C0 03 7C E0 */	lfs f0, lit_5205@l(r3)  /* 0x80647CE0@l */
/* 804F3C08  EC 22 08 2A */	fadds f1, f2, f1
/* 804F3C0C  D0 3F 0D 18 */	stfs f1, 0xd18(r31)
/* 804F3C10  C0 3F 0D 18 */	lfs f1, 0xd18(r31)
/* 804F3C14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F3C18  40 81 00 08 */	ble lbl_804F3C20
/* 804F3C1C  D0 1F 0D 18 */	stfs f0, 0xd18(r31)
lbl_804F3C20:
/* 804F3C20  3C 60 80 64 */	lis r3, lit_5205@ha /* 0x80647CE0@ha */
/* 804F3C24  C0 3F 0D 18 */	lfs f1, 0xd18(r31)
/* 804F3C28  C0 03 7C E0 */	lfs f0, lit_5205@l(r3)  /* 0x80647CE0@l */
/* 804F3C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F3C30  4C 41 13 82 */	cror 2, 1, 2
/* 804F3C34  40 82 00 38 */	bne lbl_804F3C6C
/* 804F3C38  7F E4 FB 78 */	mr r4, r31
/* 804F3C3C  38 60 00 09 */	li r3, 9
/* 804F3C40  4B EA 66 25 */	bl mDemo_Check
/* 804F3C44  2C 03 00 00 */	cmpwi r3, 0
/* 804F3C48  40 82 00 1C */	bne lbl_804F3C64
/* 804F3C4C  3C 60 80 4F */	lis r3, Player_actor_Pull_net_demo_ct@ha /* 0x804F3A2C@ha */
/* 804F3C50  7F E4 FB 78 */	mr r4, r31
/* 804F3C54  38 A3 3A 2C */	addi r5, r3, Player_actor_Pull_net_demo_ct@l /* 0x804F3A2C@l */
/* 804F3C58  38 60 00 09 */	li r3, 9
/* 804F3C5C  4B EA 65 01 */	bl mDemo_Request
/* 804F3C60  48 00 00 0C */	b lbl_804F3C6C
lbl_804F3C64:
/* 804F3C64  38 60 00 01 */	li r3, 1
/* 804F3C68  48 00 00 08 */	b lbl_804F3C70
lbl_804F3C6C:
/* 804F3C6C  38 60 00 00 */	li r3, 0
lbl_804F3C70:
/* 804F3C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F3C78  7C 08 03 A6 */	mtlr r0
/* 804F3C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3C80  4E 80 00 20 */	blr 

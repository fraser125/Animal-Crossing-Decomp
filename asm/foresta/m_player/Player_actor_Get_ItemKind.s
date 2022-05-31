lbl_804E09A4:
/* 804E09A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E09A8  7C 08 02 A6 */	mflr r0
/* 804E09AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E09B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E09B4  93 C1 00 08 */	stw r30, 8(r1)
/* 804E09B8  7C 7E 1B 78 */	mr r30, r3
/* 804E09BC  7C 83 23 78 */	mr r3, r4
/* 804E09C0  4B FF 77 C1 */	bl Player_actor_CheckPlayer_AbleLoadItem
/* 804E09C4  7C 7F 1B 78 */	mr r31, r3
/* 804E09C8  4B FF FF 9D */	bl Player_actor_Get_ItemKind_fromScene
/* 804E09CC  88 1E 0E 6C */	lbz r0, 0xe6c(r30)
/* 804E09D0  7C 64 1B 78 */	mr r4, r3
/* 804E09D4  7C 00 07 75 */	extsb. r0, r0
/* 804E09D8  41 82 00 0C */	beq lbl_804E09E4
/* 804E09DC  38 60 FF FF */	li r3, -1
/* 804E09E0  48 00 00 94 */	b lbl_804E0A74
lbl_804E09E4:
/* 804E09E4  88 1E 0E 6D */	lbz r0, 0xe6d(r30)
/* 804E09E8  7C 00 07 75 */	extsb. r0, r0
/* 804E09EC  41 82 00 08 */	beq lbl_804E09F4
/* 804E09F0  48 00 00 84 */	b lbl_804E0A74
lbl_804E09F4:
/* 804E09F4  2C 1F 00 00 */	cmpwi r31, 0
/* 804E09F8  40 82 00 08 */	bne lbl_804E0A00
/* 804E09FC  48 00 00 78 */	b lbl_804E0A74
lbl_804E0A00:
/* 804E0A00  2C 1F 00 01 */	cmpwi r31, 1
/* 804E0A04  40 82 00 6C */	bne lbl_804E0A70
/* 804E0A08  7C 80 07 74 */	extsb r0, r4
/* 804E0A0C  38 60 00 00 */	li r3, 0
/* 804E0A10  2C 00 00 0B */	cmpwi r0, 0xb
/* 804E0A14  41 80 00 0C */	blt lbl_804E0A20
/* 804E0A18  2C 00 00 33 */	cmpwi r0, 0x33
/* 804E0A1C  41 80 00 40 */	blt lbl_804E0A5C
lbl_804E0A20:
/* 804E0A20  7C 80 07 74 */	extsb r0, r4
/* 804E0A24  2C 00 00 37 */	cmpwi r0, 0x37
/* 804E0A28  41 80 00 0C */	blt lbl_804E0A34
/* 804E0A2C  2C 00 00 3F */	cmpwi r0, 0x3f
/* 804E0A30  41 80 00 2C */	blt lbl_804E0A5C
lbl_804E0A34:
/* 804E0A34  7C 80 07 74 */	extsb r0, r4
/* 804E0A38  2C 00 00 3F */	cmpwi r0, 0x3f
/* 804E0A3C  41 80 00 0C */	blt lbl_804E0A48
/* 804E0A40  2C 00 00 47 */	cmpwi r0, 0x47
/* 804E0A44  41 80 00 18 */	blt lbl_804E0A5C
lbl_804E0A48:
/* 804E0A48  7C 80 07 74 */	extsb r0, r4
/* 804E0A4C  2C 00 00 47 */	cmpwi r0, 0x47
/* 804E0A50  41 80 00 10 */	blt lbl_804E0A60
/* 804E0A54  2C 00 00 4F */	cmpwi r0, 0x4f
/* 804E0A58  40 80 00 08 */	bge lbl_804E0A60
lbl_804E0A5C:
/* 804E0A5C  38 60 00 01 */	li r3, 1
lbl_804E0A60:
/* 804E0A60  2C 03 00 00 */	cmpwi r3, 0
/* 804E0A64  41 82 00 0C */	beq lbl_804E0A70
/* 804E0A68  7C 83 23 78 */	mr r3, r4
/* 804E0A6C  48 00 00 08 */	b lbl_804E0A74
lbl_804E0A70:
/* 804E0A70  38 60 FF FF */	li r3, -1
lbl_804E0A74:
/* 804E0A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0A78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E0A7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E0A80  7C 08 03 A6 */	mtlr r0
/* 804E0A84  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0A88  4E 80 00 20 */	blr 

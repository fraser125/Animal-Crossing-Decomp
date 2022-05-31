lbl_8041F9A8:
/* 8041F9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041F9AC  7C 08 02 A6 */	mflr r0
/* 8041F9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041F9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041F9B8  7C 9F 23 78 */	mr r31, r4
/* 8041F9BC  93 C1 00 08 */	stw r30, 8(r1)
/* 8041F9C0  7C 7E 1B 78 */	mr r30, r3
/* 8041F9C4  80 04 00 00 */	lwz r0, 0(r4)
/* 8041F9C8  2C 00 00 0E */	cmpwi r0, 0xe
/* 8041F9CC  41 82 00 F0 */	beq lbl_8041FABC
/* 8041F9D0  40 80 00 14 */	bge lbl_8041F9E4
/* 8041F9D4  2C 00 00 0C */	cmpwi r0, 0xc
/* 8041F9D8  41 82 00 70 */	beq lbl_8041FA48
/* 8041F9DC  40 80 00 14 */	bge lbl_8041F9F0
/* 8041F9E0  48 00 00 EC */	b lbl_8041FACC
lbl_8041F9E4:
/* 8041F9E4  2C 00 00 10 */	cmpwi r0, 0x10
/* 8041F9E8  40 80 00 E4 */	bge lbl_8041FACC
/* 8041F9EC  48 00 00 48 */	b lbl_8041FA34
lbl_8041F9F0:
/* 8041F9F0  38 A0 00 05 */	li r5, 5
/* 8041F9F4  38 C0 00 04 */	li r6, 4
/* 8041F9F8  38 E0 00 05 */	li r7, 5
/* 8041F9FC  4B FF CE 31 */	bl make_FG_in_reserved_block
/* 8041FA00  7F C3 F3 78 */	mr r3, r30
/* 8041FA04  7F E4 FB 78 */	mr r4, r31
/* 8041FA08  38 A0 00 04 */	li r5, 4
/* 8041FA0C  38 C0 00 04 */	li r6, 4
/* 8041FA10  38 E0 00 04 */	li r7, 4
/* 8041FA14  4B FF CC 85 */	bl make_actor_in_reserved_block
/* 8041FA18  7F C3 F3 78 */	mr r3, r30
/* 8041FA1C  7F E4 FB 78 */	mr r4, r31
/* 8041FA20  38 A0 00 06 */	li r5, 6
/* 8041FA24  38 C0 00 04 */	li r6, 4
/* 8041FA28  38 E0 00 06 */	li r7, 6
/* 8041FA2C  4B FF CC 6D */	bl make_actor_in_reserved_block
/* 8041FA30  48 00 00 9C */	b lbl_8041FACC
lbl_8041FA34:
/* 8041FA34  38 A0 00 05 */	li r5, 5
/* 8041FA38  38 C0 00 04 */	li r6, 4
/* 8041FA3C  38 E0 00 05 */	li r7, 5
/* 8041FA40  4B FF CC 59 */	bl make_actor_in_reserved_block
/* 8041FA44  48 00 00 88 */	b lbl_8041FACC
lbl_8041FA48:
/* 8041FA48  38 A0 00 05 */	li r5, 5
/* 8041FA4C  38 C0 00 04 */	li r6, 4
/* 8041FA50  38 E0 00 05 */	li r7, 5
/* 8041FA54  4B FF CD D9 */	bl make_FG_in_reserved_block
/* 8041FA58  7F C3 F3 78 */	mr r3, r30
/* 8041FA5C  7F E4 FB 78 */	mr r4, r31
/* 8041FA60  38 A0 00 06 */	li r5, 6
/* 8041FA64  38 C0 00 04 */	li r6, 4
/* 8041FA68  38 E0 00 06 */	li r7, 6
/* 8041FA6C  4B FF CD C1 */	bl make_FG_in_reserved_block
/* 8041FA70  7F C3 F3 78 */	mr r3, r30
/* 8041FA74  7F E4 FB 78 */	mr r4, r31
/* 8041FA78  38 A0 00 07 */	li r5, 7
/* 8041FA7C  38 C0 00 04 */	li r6, 4
/* 8041FA80  38 E0 00 07 */	li r7, 7
/* 8041FA84  4B FF CD A9 */	bl make_FG_in_reserved_block
/* 8041FA88  7F C3 F3 78 */	mr r3, r30
/* 8041FA8C  7F E4 FB 78 */	mr r4, r31
/* 8041FA90  38 A0 00 08 */	li r5, 8
/* 8041FA94  38 C0 00 04 */	li r6, 4
/* 8041FA98  38 E0 00 08 */	li r7, 8
/* 8041FA9C  4B FF CD 91 */	bl make_FG_in_reserved_block
/* 8041FAA0  7F C3 F3 78 */	mr r3, r30
/* 8041FAA4  7F E4 FB 78 */	mr r4, r31
/* 8041FAA8  38 A0 00 09 */	li r5, 9
/* 8041FAAC  38 C0 00 04 */	li r6, 4
/* 8041FAB0  38 E0 00 09 */	li r7, 9
/* 8041FAB4  4B FF CB E5 */	bl make_actor_in_reserved_block
/* 8041FAB8  48 00 00 14 */	b lbl_8041FACC
lbl_8041FABC:
/* 8041FABC  38 A0 00 05 */	li r5, 5
/* 8041FAC0  38 C0 00 04 */	li r6, 4
/* 8041FAC4  38 E0 00 05 */	li r7, 5
/* 8041FAC8  4B FF CB D1 */	bl make_actor_in_reserved_block
lbl_8041FACC:
/* 8041FACC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041FAD0  80 1F 00 00 */	lwz r0, 0(r31)
/* 8041FAD4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041FAD8  3C 63 00 03 */	addis r3, r3, 3
/* 8041FADC  B0 03 87 EC */	sth r0, -0x7814(r3)
/* 8041FAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041FAE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041FAE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041FAEC  7C 08 03 A6 */	mtlr r0
/* 8041FAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041FAF4  4E 80 00 20 */	blr 

lbl_8062770C:
/* 8062770C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80627710  7C 08 02 A6 */	mflr r0
/* 80627714  90 01 00 24 */	stw r0, 0x24(r1)
/* 80627718  39 61 00 20 */	addi r11, r1, 0x20
/* 8062771C  4B A7 37 B5 */	bl func_8009AED0
/* 80627720  7C 7C 1B 78 */	mr r28, r3
/* 80627724  7C 9D 23 78 */	mr r29, r4
/* 80627728  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 8062772C  7C 00 0E 71 */	srawi. r0, r0, 1
/* 80627730  40 80 00 0C */	bge lbl_8062773C
/* 80627734  3B E0 00 00 */	li r31, 0
/* 80627738  48 00 00 14 */	b lbl_8062774C
lbl_8062773C:
/* 8062773C  2C 00 00 03 */	cmpwi r0, 3
/* 80627740  3B E0 00 03 */	li r31, 3
/* 80627744  41 81 00 08 */	bgt lbl_8062774C
/* 80627748  7C 1F 03 78 */	mr r31, r0
lbl_8062774C:
/* 8062774C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80627750  3C A0 80 65 */	lis r5, lit_476@ha /* 0x8064D090@ha */
/* 80627754  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80627758  3C 80 80 65 */	lis r4, data_8064D064@ha /* 0x8064D064@ha */
/* 8062775C  3F C3 00 02 */	addis r30, r3, 2
/* 80627760  38 E5 D0 90 */	addi r7, r5, lit_476@l /* 0x8064D090@l */
/* 80627764  80 BE 60 9C */	lwz r5, 0x609c(r30)
/* 80627768  38 C4 D0 64 */	addi r6, r4, data_8064D064@l /* 0x8064D064@l */
/* 8062776C  A8 7C 00 00 */	lha r3, 0(r28)
/* 80627770  38 80 00 0A */	li r4, 0xa
/* 80627774  81 85 00 14 */	lwz r12, 0x14(r5)
/* 80627778  38 A0 00 1E */	li r5, 0x1e
/* 8062777C  C0 27 00 00 */	lfs f1, 0(r7)
/* 80627780  C0 46 00 00 */	lfs f2, 0(r6)
/* 80627784  7D 89 03 A6 */	mtctr r12
/* 80627788  4E 80 04 21 */	bctrl 
/* 8062778C  D0 3C 00 34 */	stfs f1, 0x34(r28)
/* 80627790  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 80627794  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 80627798  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 8062779C  80 7D 00 00 */	lwz r3, 0(r29)
/* 806277A0  4B DB D9 B9 */	bl _texture_z_light_fog_prim_xlu
/* 806277A4  80 DE 60 9C */	lwz r6, 0x609c(r30)
/* 806277A8  7F A3 EB 78 */	mr r3, r29
/* 806277AC  38 9C 00 10 */	addi r4, r28, 0x10
/* 806277B0  38 BC 00 34 */	addi r5, r28, 0x34
/* 806277B4  81 86 00 18 */	lwz r12, 0x18(r6)
/* 806277B8  83 DD 00 00 */	lwz r30, 0(r29)
/* 806277BC  7D 89 03 A6 */	mtctr r12
/* 806277C0  4E 80 04 21 */	bctrl 
/* 806277C4  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 806277C8  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 806277CC  7F E0 07 34 */	extsh r0, r31
/* 806277D0  3C 80 80 6D */	lis r4, yukidama_tex_tbl@ha /* 0x806D3B94@ha */
/* 806277D4  38 C8 00 08 */	addi r6, r8, 8
/* 806277D8  3C 60 80 CC */	lis r3, ef_koke_yuki01_00_modelT@ha /* 0x80CC5500@ha */
/* 806277DC  90 DE 02 E0 */	stw r6, 0x2e0(r30)
/* 806277E0  38 E5 00 20 */	addi r7, r5, 0x0020 /* 0xDB060020@l */
/* 806277E4  54 06 10 3A */	slwi r6, r0, 2
/* 806277E8  38 A4 3B 94 */	addi r5, r4, yukidama_tex_tbl@l /* 0x806D3B94@l */
/* 806277EC  90 E8 00 00 */	stw r7, 0(r8)
/* 806277F0  3C 80 DE 00 */	lis r4, 0xde00
/* 806277F4  38 03 55 00 */	addi r0, r3, ef_koke_yuki01_00_modelT@l /* 0x80CC5500@l */
/* 806277F8  7C 65 30 2E */	lwzx r3, r5, r6
/* 806277FC  90 68 00 04 */	stw r3, 4(r8)
/* 80627800  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 80627804  38 65 00 08 */	addi r3, r5, 8
/* 80627808  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8062780C  90 85 00 00 */	stw r4, 0(r5)
/* 80627810  90 05 00 04 */	stw r0, 4(r5)
/* 80627814  39 61 00 20 */	addi r11, r1, 0x20
/* 80627818  4B A7 37 05 */	bl func_8009AF1C
/* 8062781C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80627820  7C 08 03 A6 */	mtlr r0
/* 80627824  38 21 00 20 */	addi r1, r1, 0x20
/* 80627828  4E 80 00 20 */	blr 
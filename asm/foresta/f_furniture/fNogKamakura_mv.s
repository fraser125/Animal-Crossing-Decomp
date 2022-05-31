lbl_80633150:
/* 80633150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80633154  7C 08 02 A6 */	mflr r0
/* 80633158  3C 80 80 6D */	lis r4, int_nog_kamakura_off_pal@ha /* 0x806D78C0@ha */
/* 8063315C  3C A0 80 6D */	lis r5, int_nog_kamakura_on_pal@ha /* 0x806D78E0@ha */
/* 80633160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80633164  7C 66 1B 78 */	mr r6, r3
/* 80633168  38 84 78 C0 */	addi r4, r4, int_nog_kamakura_off_pal@l /* 0x806D78C0@l */
/* 8063316C  38 A5 78 E0 */	addi r5, r5, int_nog_kamakura_on_pal@l /* 0x806D78E0@l */
/* 80633170  80 63 08 50 */	lwz r3, 0x850(r3)
/* 80633174  4B FF B7 11 */	bl func_8062E884
/* 80633178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063317C  7C 08 03 A6 */	mtlr r0
/* 80633180  38 21 00 10 */	addi r1, r1, 0x10
/* 80633184  4E 80 00 20 */	blr 

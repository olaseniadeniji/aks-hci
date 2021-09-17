�� [ C m d l e t B i n d i n g ( ) ] 
 
 p a r a m   
 
 ( 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ r g N a m e , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ l o c a t i o n , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ s u b I d , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ t e n a n t I d , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ d o m a i n N a m e , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ a d m i n U s e r n a m e , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ u s e r N a m e , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ a d m i n P a s s w o r d , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ a p p I d , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ a p p S e c r e t , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ i n s t a l l W A C , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ a k s H c i N e t w o r k i n g , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ k u b e r n e t e s V e r s i o n , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ i n t ] $ c o n t r o l P l a n e N o d e s , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ c o n t r o l P l a n e N o d e S i z e , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ l o a d B a l a n c e r S i z e , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ i n t ] $ l i n u x W o r k e r N o d e s , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ l i n u x W o r k e r N o d e S i z e , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ i n t ] $ w i n d o w s W o r k e r N o d e s , 
 
         [ P a r a m e t e r ( M a n d a t o r y ) ] 
 
         [ s t r i n g ] $ w i n d o w s W o r k e r N o d e S i z e 
 
 ) 
 
 f u n c t i o n   L o g ( $ o u t )   { 
 
         $ o u t   =   [ S y s t e m . D a t e T i m e ] : : N o w . T o S t r i n g ( " y y y y . M M . d d   h h : m m : s s " )   +   "   - - - -   "   +   $ o u t ; 
 
         W r i t e - O u t p u t   $ o u t ; 
 
 } 
 
 
 
 f u n c t i o n   D e c o d e P a r a m ( $ p a r a m e t e r )   { 
 
         i f   ( $ p a r a m e t e r . S t a r t s W i t h ( " b a s e 6 4 : " ) )   { 
 
                 $ e n c o d e d P a r a m e t e r   =   $ p a r a m e t e r . S p l i t ( ' : ' ,   2 ) [ 1 ] 
 
                 $ d e c o d e d A r r a y   =   [ S y s t e m . C o n v e r t ] : : F r o m B a s e 6 4 S t r i n g ( $ e n c o d e d P a r a m e t e r ) ; 
 
                 $ p a r a m e t e r   =   [ S y s t e m . T e x t . E n c o d i n g ] : : U T F 8 . G e t S t r i n g ( $ d e c o d e d A r r a y ) ;   
 
         } 
 
         r e t u r n   $ p a r a m e t e r 
 
 } 
 
 
 
 [ N e t . S e r v i c e P o i n t M a n a g e r ] : : S e c u r i t y P r o t o c o l   =   [ N e t . S e c u r i t y P r o t o c o l T y p e ] : : T l s 1 2 
 
 $ G l o b a l : V e r b o s e P r e f e r e n c e   =   " C o n t i n u e " 
 
 $ G l o b a l : E r r o r A c t i o n P r e f e r e n c e   =   ' S t o p ' 
 
 $ G l o b a l : P r o g r e s s P r e f e r e n c e   =   ' S i l e n t l y C o n t i n u e ' 
 
 
 
 $ S c r i p t L o c a t i o n   =   G e t - L o c a t i o n 
 
 
 
 # # #   S E T   L O G   L O C A T I O N   # # # 
 
 $ l o g P a t h   =   " $ ( $ e n v : S y s t e m D r i v e ) \ I n s t a l l A k s H c i L o g " 
 
 
 
 i f   ( ! [ S y s t e m . I O . D i r e c t o r y ] : : E x i s t s ( " $ l o g P a t h " ) )   { 
 
         N e w - I t e m   - P a t h   $ l o g P a t h   - I t e m T y p e   D i r e c t o r y   - F o r c e   - E r r o r A c t i o n   S t o p 
 
 } 
 
 
 
 # # #   C O N F I G   P O W E R   O P T I O N S   # # # 
 
 L o g   " C o n f i g u r e   P o w e r   O p t i o n s   t o   H i g h   p e r f o r m a n c e   m o d e . " 
 
 P O W E R C F G . E X E   / S   S C H E M E _ M I N 
 
 
 
 # # #   S T A R T   L O G G I N G   # # # 
 
 $ r u n T i m e   =   $ ( G e t - D a t e ) . T o S t r i n g ( " M M d d - H H m m s s " ) 
 
 $ f u l l L o g P a t h   =   " $ l o g P a t h \ I n s t a l l A k s H c i $ r u n T i m e . t x t " 
 
 S t a r t - T r a n s c r i p t   - P a t h   " $ f u l l L o g P a t h "   - A p p e n d 
 
 L o g   " C r e a t i n g   l o g   f o l d e r " 
 
 L o g   " L o g   f o l d e r   h a s   b e e n   c r e a t e d   a t   $ l o g P a t h " 
 
 L o g   " L o g   f i l e   s t o r e d   a t   $ f u l l L o g P a t h " 
 
 L o g   " S t a r t i n g   l o g g i n g " 
 
 L o g   " L o g   s t a r t e d   a t   $ r u n T i m e " 
 
 
 
 # # #   D E C O D I N G   P A R A M E T E R S 
 
 L o g   " D e c o d i n g   s e c u r e   p a r a m e t e r s   p a s s e d   f r o m   A R M   t e m p l a t e " 
 
 L o g   " a d m i n U s e r n a m e " 
 
 $ a d m i n U s e r n a m e   =   D e c o d e P a r a m   $ a d m i n U s e r n a m e 
 
 L o g   " a d m i n U s e r n a m e " 
 
 $ a d m i n P a s s w o r d   =   D e c o d e P a r a m   $ a d m i n P a s s w o r d 
 
 L o g   " a p p I d " 
 
 $ a p p I d   =   D e c o d e P a r a m   $ a p p I d 
 
 $ a p p S e c r e t   =   D e c o d e P a r a m   $ a p p S e c r e t 
 
 
 
 # # #   C R E A T E   S T R O N G   P A S S W O R D S   # # # 
 
 L o g   " C o n f i g u r i n g   s t r o n g   p a s s w o r d s   f o r   t h e   u s e r   a c c o u n t s " 
 
 $ s t r A d m i n P a s s w o r d   =   C o n v e r t T o - S e c u r e S t r i n g   $ a d m i n P a s s w o r d   - F o r c e   - A s P l a i n T e x t   - V e r b o s e 
 
 $ s t r A p p S e c r e t   =   C o n v e r t T o - S e c u r e S t r i n g   $ a p p S e c r e t   - F o r c e   - A s P l a i n T e x t   - V e r b o s e 
 
 
 
 # # #   C R E A T E   C R E D E N T I A L S   # # # 
 
 L o g   " C o n f i g u r i n g   c r e d e n t i a l   o b j e c t s " 
 
 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] $ d o m a i n C r e d s   =   N e w - O b j e c t   S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l   ( " $ { d o m a i n N a m e } \ $ ( $ a d m i n U s e r n a m e ) " ,   $ s t r A d m i n P a s s w o r d ) 
 
 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] $ n o d e L o c a l C r e d s   =   N e w - O b j e c t   S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l   ( $ a d m i n U s e r n a m e ,   $ a d m i n P a s s w o r d ) 
 
 [ S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l ] $ s p C r e d s   =   N e w - O b j e c t   S y s t e m . M a n a g e m e n t . A u t o m a t i o n . P S C r e d e n t i a l   ( $ a p p I d ,   $ s t r A p p S e c r e t ) 
 
 
 
 $ t a r g e t D r i v e   =   " V " 
 
 $ t a r g e t A k s P a t h   =   " $ t a r g e t D r i v e "   +   " : \ A K S - H C I " 
 
 $ l o a d B a l a n c e r S i z e   =   ( $ l o a d B a l a n c e r S i z e ) . S p l i t ( "   " ,   2 ) [ 0 ] 
 
 $ c o n t r o l P l a n e N o d e S i z e   =   ( $ c o n t r o l P l a n e N o d e S i z e ) . S p l i t ( "   " ,   2 ) [ 0 ] 
 
 $ l i n u x W o r k e r N o d e S i z e   =   ( $ l i n u x W o r k e r N o d e S i z e ) . S p l i t ( "   " ,   2 ) [ 0 ] 
 
 $ w i n d o w s W o r k e r N o d e S i z e   =   ( $ w i n d o w s W o r k e r N o d e S i z e ) . S p l i t ( "   " ,   2 ) [ 0 ] 
 
 
 
 < #   I n i t i a l i z e   A K S - H C I 
 
 t r y   { 
 
         $ i n i t i a l i z e d   =   T e s t - P a t h   - P a t h   " C : \ A k s H c i A u t o D e p l o y \ I n i t i a l i z e A k s H c i . t x t " 
 
         i f   ( ! $ i n i t i a l i z e d )   { 
 
                 L o g   " N o d e   h a s   n o t   b e e n   p r e v i o u s l y   i n i t i a l i z e d   -   i n i t i a l i z i n g   n o w " 
 
                 I n i t i a l i z e - A k s H c i N o d e 
 
                 N e w - i t e m   - P a t h   C : \ A k s H c i A u t o D e p l o y \   - N a m e   " I n i t i a l i z e A k s H c i . t x t "   - I t e m T y p e   F i l e   - F o r c e   - V e r b o s e 
 
                 L o g   " I n i t i a l i z a t i o n   c o m p l e t e d " 
 
         } 
 
         e l s e   { 
 
                 L o g   " N o d e   h a s   b e e n   p r e v i o u s l y   i n i t i a l i z e d   -   M o v i n g   t o   n e x t   s t e p " 
 
         } 
 
 } 
 
 c a t c h   { 
 
         L o g   " S o m e t h i n g   w e n t   w r o n g   w i t h   r u n n i n g   I n i t i a l i z e - A k s H c i .   P l e a s e   r e v i e w   t h e   l o g   f i l e   a t   $ f u l l L o g P a t h   a n d   r e d e p l o y   y o u r   V M . " 
 
         S e t - L o c a t i o n   $ S c r i p t L o c a t i o n 
 
         t h r o w   $ _ . E x c e p t i o n . M e s s a g e 
 
         r e t u r n 
 
 }   # > 
 
 
 
 L o g   " C u r r e n t   u s e r   i s   $ ( w h o a m i ) " 
 
 L o g   " R e s o u r c e   g r o u p   =   $ r g N a m e " 
 
 L o g   " L o c a t i o n   =   $ l o c a t i o n " 
 
 L o g   " S u b I D   =   $ s u b I d " 
 
 L o g   " t e n a n t I D   =   $ t e n a n t I d " 
 
 L o g   " D o m a i n   N a m e   =   $ d o m a i n N a m e " 
 
 L o g   " A d m i n   U s e r   =   $ a d m i n U s e r n a m e " 
 
 L o g   " A p p   I D   =   $ a p p I d " 
 
 L o g   " I n s t a l l   W A C   =   $ i n s t a l l W A C " 
 
 L o g   " N e t w o r k i n g   c o n f i g   =   $ a k s H c i N e t w o r k i n g " 
 
 L o g   " K u b e r n e t e s   V e r s i o n   =   $ k u b e r n e t e s V e r s i o n " 
 
 L o g   " N u m b e r   o f   C o n t r o l   P l a n e   N o d e s   =   $ c o n t r o l P l a n e N o d e s   o f   s i z e :   $ c o n t r o l P l a n e N o d e S i z e " 
 
 L o g   " N u m b e r   o f   L i n u x   N o d e s   =   $ l i n u x W o r k e r N o d e s   o f   s i z e :   $ l i n u x W o r k e r N o d e S i z e " 
 
 L o g   " N u m b e r   o f   W i n d o w s   P l a n e   N o d e s   =   $ w i n d o w s W o r k e r N o d e s   o f   s i z e :   $ w i n d o w s W o r k e r N o d e S i z e " 
 
 L o g   " L B   S i z e   =   $ l o a d B a l a n c e r S i z e " 
 
 
 
 $ e n d T i m e   =   $ ( G e t - D a t e ) . T o S t r i n g ( " M M d d - H H m m s s " ) 
 
 L o g   " L o g g i n g   s t o p p e d   a t   $ e n d T i m e " 
 
 S t o p - T r a n s c r i p t   - E r r o r A c t i o n   S i l e n t l y C o n t i n u e
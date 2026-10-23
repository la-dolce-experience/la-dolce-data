-- =====================================================================
-- Seed inicial: conteúdo REAL extraído do site original da La Dolce Experience.
-- Mantenha em sincronia com la-dolce-app/src/content/defaultContent.ts (fallback do site).
-- Imagens iniciais apontam para arquivos estáticos em la-dolce-app/public/images.
-- As seções têm os mesmos ids da migração 20261023120000_secoes_ordenaveis (la-dolce-api).
-- =====================================================================

insert into public.media (id, src_lg, src_sm, width_lg, height_lg, width_sm, height_sm, alt, original_name) values
  ('00000000-0000-4000-a000-000000000001', '/images/estacao-balcao-1600.webp', '/images/estacao-balcao-800.webp',
   1402, 1122, 800, 640, 'Balcão rosa da La Dolce Experience montado para eventos', 'estacao-balcao.png'),
  ('00000000-0000-4000-a000-000000000002', '/images/copinho-la-dolce-soft-1600.webp', '/images/copinho-la-dolce-soft-800.webp',
   1066, 1600, 533, 800, 'Sorvete La Dolce servido em copinho rosa com toppings coloridos', 'copinho-la-dolce-soft.jpg'),
  ('00000000-0000-4000-a000-000000000003', '/images/casquinha-morango-1600.webp', '/images/casquinha-morango-800.webp',
   594, 1600, 297, 800, 'Casquinha de sorvete soft de morango', 'casquinha-morango.png'),
  ('00000000-0000-4000-a000-000000000004', '/images/logo.webp', '/images/logo-280.webp',
   480, 303, 280, 177, 'La Dolce Experience', 'logo.png'),
  ('00000000-0000-4000-a000-000000000005', '/images/og-la-dolce.jpg', '/images/og-la-dolce.jpg',
   1200, 630, 1200, 630, 'Estação La Dolce Experience', 'og-la-dolce.jpg');

insert into public.site_settings (
  id, business_name, footer_tagline, logo_media_id, whatsapp_number, whatsapp_greeting,
  city, state, service_area, seo_title, seo_description, og_media_id
) values (
  1,
  'La Dolce Experience',
  'Sorveteria premium para eventos sociais e corporativos.',
  '00000000-0000-4000-a000-000000000004',
  '5511920102743',
  'Olá! Vim pelo site e quero tirar algumas dúvidas.',
  'São Paulo',
  'SP',
  'Atendimento personalizado em São Paulo',
  'La Dolce Experience | Sorveteria Premium para Eventos',
  'Leve uma sorveteria premium para seu evento corporativo, feira, casamento, aniversário ou celebração social.',
  '00000000-0000-4000-a000-000000000005'
);

-- Seções, na ordem da página. O ícone é o do menu lateral do painel (catálogo em la-dolce-app).
insert into public.sections
  (id, type, slug, name, nav_label, icon, position, eyebrow, title, body, cta_label, note, image_caption,
   image_media_id, image_alt, options)
values
  ('00000000-0000-4000-b000-000000000001', 'hero', 'destaque', 'Destaque principal', '', 'sparkles', 0,
   'Sorveteria premium para eventos', 'A sorveteria mais desejada do seu evento.',
   'Levamos uma estação elegante de sorvete soft premium para aniversários, casamentos, eventos corporativos, feiras e celebrações especiais.',
   'Solicitar orçamento', 'Atendimento personalizado em São Paulo', 'Uma atração doce, elegante e fotografável.',
   '00000000-0000-4000-a000-000000000001', 'Balcão rosa da La Dolce Experience montado para eventos',
   '{"whatsappLabel": "Tirar dúvidas no WhatsApp"}'),
  ('00000000-0000-4000-b000-000000000002', 'texto_imagem', 'experiencia', 'Experiência', 'Experiência', 'heart-handshake', 1,
   'Mais que sobremesa', 'Uma experiência que vira assunto.',
   'Cada detalhe foi pensado para surpreender seus convidados: a apresentação, o serviço, os toppings, a cremosidade e a possibilidade de personalizar a estação para combinar com a identidade do seu evento.',
   '', '', '', '00000000-0000-4000-a000-000000000002', 'Sorvete La Dolce servido em copinho rosa com toppings coloridos',
   '{"imagePosition": "esquerda", "imageFit": "cortada"}'),
  ('00000000-0000-4000-b000-000000000003', 'cartoes', 'eventos', 'Tipos de evento', 'Eventos', 'party-popper', 2,
   'Para diferentes ocasiões', 'Levamos a La Dolce Experience até você.',
   'Uma operação compacta, charmosa e memorável para eventos sociais e corporativos.',
   'Solicitar orçamento para meu evento', '', '', null, '', '{"linkLabel": "Pedir orçamento"}'),
  ('00000000-0000-4000-b000-000000000004', 'texto_imagem', 'sabores', 'Sabores e apresentação', '', 'ice-cream-cone', 3,
   'Sabores e apresentação', 'Sorvete servido na hora, com presença de marca.',
   'Do copinho à casquinha, dos toppings aos detalhes visuais, a experiência pode ser adaptada ao clima da festa ou à identidade da empresa. O resultado é um serviço bonito, gostoso e altamente compartilhável.',
   '', '', '', '00000000-0000-4000-a000-000000000003', 'Casquinha de sorvete soft de morango',
   '{"imagePosition": "direita", "imageFit": "inteira"}'),
  -- Catálogos sem título: aparecem logo abaixo de "Sabores e apresentação".
  ('00000000-0000-4000-b000-000000000005', 'catalogo', 'lista-de-sabores', 'Sabores', '', 'ice-cream-cone', 4,
   '', '', '', '', '', '', null, '', '{"imagePosition": "direita", "listTitle": "Sabores"}'),
  ('00000000-0000-4000-b000-000000000006', 'catalogo', 'apresentacoes', 'Apresentações', '', 'ice-cream-cone', 5,
   '', '', '', '', '', '', null, '', '{"imagePosition": "direita", "listTitle": "Apresentações"}'),
  ('00000000-0000-4000-b000-000000000007', 'destaques', 'personalizacao', 'Personalização', '', 'palette', 6,
   'Personalização', 'Seu evento, com a sua cara.',
   'Podemos adaptar a experiência para criar uma entrega mais exclusiva, alinhada ao perfil dos convidados e ao objetivo da celebração.',
   'Conversar sobre personalização', '', '', null, '', '{}'),
  ('00000000-0000-4000-b000-000000000008', 'etapas', 'como-funciona', 'Como funciona', '', 'list-ordered', 7,
   'Como funciona', 'Do primeiro contato ao dia do evento.', '', '', '', '', null, '', '{}'),
  ('00000000-0000-4000-b000-000000000009', 'galeria', 'galeria', 'Galeria', 'Galeria', 'camera', 8,
   'Galeria', 'Produto bonito antes mesmo da primeira colherada.', '', '', '', '', null, '', '{}'),
  ('00000000-0000-4000-b000-000000000010', 'depoimentos', 'depoimentos', 'Depoimentos', '', 'message-square-quote', 9,
   'Depoimentos', 'Quem já viveu a experiência', '', '', '', '', null, '', '{}'),
  ('00000000-0000-4000-b000-000000000011', 'formulario', 'orcamento', 'Formulário de orçamento', 'Pedir orçamento', 'clipboard-list', 10,
   'Solicite um orçamento', 'Vamos criar uma experiência inesquecível?',
   'Preencha os dados do seu evento. Ao enviar, abriremos uma conversa no WhatsApp com todas as informações organizadas para agilizar seu atendimento.',
   'Solicitar orçamento pelo WhatsApp', '', '', null, '',
   '{"subjectLabel": "Tipo de evento", "showDate": true, "dateLabel": "Data prevista", "showQuantity": true,
     "quantityLabel": "Nº estimado de convidados", "showLocation": true, "locationLabel": "Cidade ou local do evento",
     "messageLabel": "Conte um pouco sobre o evento"}'),
  ('00000000-0000-4000-b000-000000000012', 'contato', 'atendimento', 'Atendimento e localização', 'Atendimento', 'map-pin', 11,
   'Atendimento', 'Onde atendemos', 'Levamos a estação até o local do seu evento.', '', '', '', null, '', '{}'),
  ('00000000-0000-4000-b000-000000000013', 'faq', 'duvidas', 'Perguntas frequentes', 'Dúvidas', 'circle-help', 12,
   'Dúvidas frequentes', 'Perguntas frequentes', '', '', '', '', null, '', '{}');

-- Tipos de evento: o rótulo (label) é a opção do campo "Tipo de evento" do formulário.
insert into public.section_items (section_id, title, description, label, position) values
  ('00000000-0000-4000-b000-000000000003', 'Eventos corporativos',
   'Confraternizações, lançamentos, ativações de marca, festas internas e ações para clientes.', 'Evento corporativo', 0),
  ('00000000-0000-4000-b000-000000000003', 'Feiras e exposições',
   'Uma forma elegante de atrair visitantes, gerar conversa e transformar o estande em ponto de desejo.', 'Feira ou exposição', 1),
  ('00000000-0000-4000-b000-000000000003', 'Eventos sociais',
   'Casamentos, aniversários, formaturas e celebrações nas quais cada detalhe precisa encantar.', 'Evento social', 2);

-- Diferenciais da faixa de personalização.
insert into public.section_items (section_id, title, position) values
  ('00000000-0000-4000-b000-000000000007', 'Copinhos e comunicação visual', 0),
  ('00000000-0000-4000-b000-000000000007', 'Toppings e combinações especiais', 1),
  ('00000000-0000-4000-b000-000000000007', 'Estação elegante e instagramável', 2),
  ('00000000-0000-4000-b000-000000000007', 'Atendimento direto e personalizado', 3);

insert into public.section_items (section_id, media_id, alt, position) values
  ('00000000-0000-4000-b000-000000000009', '00000000-0000-4000-a000-000000000001', 'Balcão La Dolce Experience para eventos', 0),
  ('00000000-0000-4000-b000-000000000009', '00000000-0000-4000-a000-000000000002', 'Sorvete no copinho La Dolce Soft', 1),
  ('00000000-0000-4000-b000-000000000009', '00000000-0000-4000-a000-000000000003', 'Casquinha de sorvete soft La Dolce', 2);

-- Apresentações citadas no site original ("do copinho à casquinha"). Os sabores dependem do cliente.
insert into public.section_items (section_id, title, media_id, alt, position) values
  ('00000000-0000-4000-b000-000000000006', 'Copinho', '00000000-0000-4000-a000-000000000002',
   'Sorvete La Dolce servido em copinho rosa com toppings coloridos', 0),
  ('00000000-0000-4000-b000-000000000006', 'Casquinha', '00000000-0000-4000-a000-000000000003',
   'Casquinha de sorvete soft de morango', 1);

-- Sabores, etapas, FAQ e depoimentos começam vazios: dependem de informações do cliente.
